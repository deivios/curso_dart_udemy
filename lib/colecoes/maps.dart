void main() {
  // Criando um Map (dicionário)
  Map<String, String> estados = {
    "SP": "São Paulo",
    "RJ": "Rio de Janeiro",
    "MG": "Minas Gerais",
  };
  print("Map de estados: $estados");

  // Acessando valores pela chave
  print("Estado de SP: ${estados["SP"]}");
  print("Estado de RJ: ${estados["RJ"]}");

  // Adicionando novos pares chave-valor
  estados["RS"] = "Rio Grande do Sul";
  print("Após adicionar RS: $estados");

  // Atualizando um valor
  estados["SP"] = "São Paulo - Atualizado";
  print("Após atualizar SP: $estados");

  // Verificando se contém uma chave
  print("Contém a chave MG? ${estados.containsKey("MG")}");
  print("Contém o valor 'Minas Gerais'? ${estados.containsValue("Minas Gerais")}");

  // Removendo um elemento
  estados.remove("RJ");
  print("Após remover RJ: $estados");

  // Tamanho do Map
  print("Tamanho do Map: ${estados.length}");

  // Iterando sobre as chaves
  print("\nIterando sobre as chaves:");
  for (var chave in estados.keys) {
    print("Chave: $chave, Valor: ${estados[chave]}");
  }

  // Iterando sobre os valores
  print("\nIterando sobre os valores:");
  for (var valor in estados.values) {
    print("Valor: $valor");
  }

  // Iterando sobre as entradas (chave-valor)
  print("\nIterando sobre as entradas:");
  estados.forEach((chave, valor) {
    print("$chave -> $valor");
  });

  // Map com diferentes tipos
  Map<String, int> idades = {
    "Paulo": 25,
    "João": 30,
    "Maria": 28,
  };
  print("\nMap de idades: $idades");

  // Map vazio
  Map<String, String> mapVazio = {};
  print("\nMap vazio: $mapVazio");
  print("Está vazio? ${mapVazio.isEmpty}");
}
