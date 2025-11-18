void main() {
  // Criando um Set (conjunto)
  Set<String> frutas = {"maçã", "banana", "laranja"};
  print("Set de frutas: $frutas");

  // Adicionando elementos
  frutas.add("uva");
  print("Após adicionar uva: $frutas");

  // Tentando adicionar elemento duplicado (não será adicionado)
  frutas.add("maçã");
  print("Após tentar adicionar maçã novamente: $frutas");

  // Adicionando múltiplos elementos
  frutas.addAll({"manga", "abacaxi"});
  print("Após addAll: $frutas");

  // Verificando se contém um elemento
  print("Contém banana? ${frutas.contains("banana")}");

  // Removendo elementos
  frutas.remove("laranja");
  print("Após remover laranja: $frutas");

  // Tamanho do Set
  print("Tamanho do Set: ${frutas.length}");

  // Iterando sobre o Set
  print("\nIterando sobre o Set:");
  for (String fruta in frutas) {
    print("Fruta: $fruta");
  }

  // Usando forEach
  print("\nUsando forEach:");
  frutas.forEach((fruta) => print("Fruta: $fruta"));

  // Operações com Sets
  Set<int> numeros1 = {1, 2, 3, 4, 5};
  Set<int> numeros2 = {4, 5, 6, 7, 8};

  print("\nSet 1: $numeros1");
  print("Set 2: $numeros2");

  // Interseção (elementos comuns)
  Set<int> intersecao = numeros1.intersection(numeros2);
  print("Interseção: $intersecao");

  // União (todos os elementos)
  Set<int> uniao = numeros1.union(numeros2);
  print("União: $uniao");

  // Diferença (elementos em numeros1 que não estão em numeros2)
  Set<int> diferenca = numeros1.difference(numeros2);
  print("Diferença (1 - 2): $diferenca");

  // Set vazio
  Set<String> setVazio = {};
  print("\nSet vazio: $setVazio");
  print("Está vazio? ${setVazio.isEmpty}");
}
