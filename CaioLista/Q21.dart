import 'dart:io';

void main() {
  stdout.write("Digite uma palavra: ");
  String palavra = stdin.readLineSync() ?? '';

  Map<String, int> contagem = {};

  for (int i = 0; i < palavra.length; i++) {
    String letra = palavra[i];

    if (contagem.containsKey(letra)) {
      contagem[letra] = contagem[letra]! + 1;
    } else {
      contagem[letra] = 1;
    }
  }

  // Exibe a contagem das letras
  print("Contagem de letras na palavra '$palavra':");
  contagem.forEach((letra, contagem) {
    print("$letra = $contagem");
  });
}
