void main() {
  // Criando uma lista
  List<String> nomes = ["Paulo", "João", "Maria"];
  print("Lista de nomes: $nomes");

  // Adicionando elementos
  nomes.add("Ana");
  print("Após adicionar Ana: $nomes");

  // Adicionando múltiplos elementos
  nomes.addAll(["Pedro", "Carla"]);
  print("Após addAll: $nomes");

  // Acessando elementos por índice
  print("Primeiro nome: ${nomes[0]}");
  print("Último nome: ${nomes[nomes.length - 1]}");

  // Removendo elementos
  nomes.remove("João");
  print("Após remover João: $nomes");

  // Verificando se contém um elemento
  print("Contém Maria? ${nomes.contains("Maria")}");

  // Tamanho da lista
  print("Tamanho da lista: ${nomes.length}");

  // Iterando sobre a lista
  print("\nIterando sobre a lista:");
  for (String nome in nomes) {
    print("Nome: $nome");
  }

  // Usando forEach
  print("\nUsando forEach:");
  nomes.forEach((nome) => print("Nome: $nome"));

  // Lista de números
  List<int> numeros = [1, 2, 3, 4, 5];
  print("\nNúmeros: $numeros");

  // Operações com listas
  numeros.removeAt(0); // Remove o primeiro elemento
  print("Após remover primeiro: $numeros");

  numeros.insert(0, 10); // Insere no início
  print("Após inserir 10 no início: $numeros");

  // Lista vazia
  List<String> listaVazia = [];
  print("\nLista vazia: $listaVazia");
  print("Está vazia? ${listaVazia.isEmpty}");
}
