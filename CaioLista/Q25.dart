import 'dart:io';

int somatorio(int inicio, int fim) {
  if (inicio > fim) {
    return 0; 
  } else {
    return inicio + somatorio(inicio + 1, fim);
  }
}

void main() {
  stdout.write("Digite o número inicial do intervalo: ");
  int inicio = int.parse(stdin.readLineSync() ?? '0');

  stdout.write("Digite o número final do intervalo: ");
  int fim = int.parse(stdin.readLineSync() ?? '0');

  int resultado = somatorio(inicio, fim);

  print("O somatório dos números no intervalo entre $inicio e $fim é $resultado.");
}
