import 'dart:io';

void main() {
  stdout.write("Digite uma frase: ");
  String? frase = stdin.readLineSync();

  if (frase != null && frase.isNotEmpty) {
    String fraseInvertida = frase.split('').reversed.join('');
      print("Frase invertida: $fraseInvertida");
  } else {
    print("Nenhuma frase digitada.");
  }
}
