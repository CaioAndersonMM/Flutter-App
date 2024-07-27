import 'dart:io';

void main() {
  stdout.write("Digite um número de 1 a 9 para ver a tabuada: ");
  var entrada = stdin.readLineSync();
  var numero = int.tryParse(entrada ?? '');

  if (numero != null && numero >= 1 && numero <= 9) {
    print("\nTabuada do $numero:");
    for (int i = 1; i <= 10; i++) {
      print("$numero x $i = ${numero * i}");
    }
  } else {
    print("Número inválido. Por favor, digite um número de 1 a 9.");
  }
}
