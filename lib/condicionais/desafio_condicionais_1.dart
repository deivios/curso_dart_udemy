void main() {
  int idade = 60;

  if (idade < 12) {
    print("Criança");
  } else if (idade >= 12 && idade <= 17) {
    print("Adolescente");
  } else if (idade >= 18 && idade <= 59) {
    print("Adulto");
  } else {
    print("Idoso");
  }

  
  switch (idade) {
    case < 12:
      print("Criança");
      break;
    case >= 12 && <= 17:
      print("Adolescente");
      break;
    case >= 18 && <= 59:
      print("Adulto");
      break;
    default:
      print("Idoso");
  }
}

