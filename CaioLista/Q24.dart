import 'dart:io';

int Fat(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * Fat(n - 1);
  }
}

void main() {
  stdout.write("Digite um número para calcular o fatorial: ");
  int numero = int.parse(stdin.readLineSync() ?? '0');

  int fatorial = Fat(numero);

  print("O fatorial de $numero é $fatorial.");
}
