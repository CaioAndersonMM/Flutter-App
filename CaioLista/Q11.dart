import 'dart:io';

void main() {
  stdout.write("Digite um número para ver se é primo: ");
  int numero = int.parse(stdin.readLineSync() ?? '0');

  for (int i = 2; i < numero; i++) {
    if (numero % i == 0) {
      return print("Não é numero primo.");
    }
  }
  return print("É numero primo.");
}
