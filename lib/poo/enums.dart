void main() {
  StatusPedido statusPedido = pegaStatusPedidoBaseadoNoNumero(3);

  switch (statusPedido) {
    case StatusPedido.pendente:
      print("Pedido pendente");
      break;
    case StatusPedido.producao:
      print("Pedido em produção");
      break;
    case StatusPedido.finalizado:
      print("Pedido finalizado");
      break;
    case StatusPedido.cancelado:
      print("Pedido Cancelado");
      break;
      case StatusPedido.desconhecido:
      print("status do pedido desconhecido");
      break;
  }
}

StatusPedido pegaStatusPedidoBaseadoNoNumero(int status) {
  switch (status) {
    case 0:
      return StatusPedido.pendente;
    case 1:
      return StatusPedido.producao;
    case 2:
      return StatusPedido.finalizado;
    case 3:
      return StatusPedido.cancelado;
    default:
      return StatusPedido.desconhecido;
  }
}

enum StatusPedido { pendente, producao, finalizado, cancelado, desconhecido }

