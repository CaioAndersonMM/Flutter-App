import 'dart:io';

void main() {
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync() ?? '';

  List<String> palavras = frase.split(' ');


  Map<String, int> contagem = {};

  for (int i = 0; i < palavras.length; i++) {

    String palavra = palavras[i];

    if (contagem.containsKey(palavra)) {
      contagem[palavra] = contagem[palavra]! + 1;
    } else {
      contagem[palavra] = 1;
    }
  }

  // Exibe a contagem das letras
  print("Contagem de palavra na frase '$frase':");
  contagem.forEach((palavras, contagem) {
    print("$palavras = $contagem");
  });
}
