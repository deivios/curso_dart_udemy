import 'dart:async';
import 'dart:math';

class TemperatureSensor {
  final StreamController<double> _controller = StreamController<double>.broadcast();
  Timer? _timer;
  final _random = Random();

  Stream<double> get stream => _controller.stream;

  void start() {
    // Evita múltiplos starts
    if (_timer?.isActive ?? false) return;

    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      // Se já foi pedido para parar ou stream fechada → sai
      if (!_timer!.isActive || _controller.isClosed) return;

      final temperature = 20 + (_random.nextDouble() * 15);
      _controller.add(temperature);
    });
  }

  Future<void> finish() async {
    // 1. Cancela o timer imediatamente
    _timer?.cancel();
    _timer = null;

    // 2. Pequeno delay para deixar o último callback (se estiver rodando) terminar
    await Future.delayed(Duration(milliseconds: 50));

    // 3. Fecha o StreamController (dispara onDone em todos os listeners)
    if (!_controller.isClosed) {
      await _controller.close();
    }
  }
}

void main() async {
  final temperatureSensor = TemperatureSensor();

  temperatureSensor.stream.listen(
    (temp) => print("Temperatura: ${temp.toStringAsFixed(1)}°C"),
    onDone: () => print("Evento 1 finalizado!"),
  );

  temperatureSensor.stream.listen(
    (temp) {
      if (temp > 30) print("ALERTA! Temperatura alta: ${temp.toStringAsFixed(1)}°C");
    },
    onDone: () => print("Evento 2 finalizado!"),
  );

  print("Iniciando sensor...");
  temperatureSensor.start();

  await Future.delayed(Duration(seconds: 5));

  print("Parando sensor agora...");
  await temperatureSensor.finish();

  print("Programa encerrado.");
}