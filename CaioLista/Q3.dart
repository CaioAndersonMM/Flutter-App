import 'dart:io';

void main() {
  stdout.write("Digite a nota da 1ª prova: ");
  var nota1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write("Digite a nota da 2ª prova: ");
  var nota2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write("Digite a nota da 3ª prova: ");
  var nota3 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  var mediaParcial = (nota1 + nota2 + nota3) / 3;

  if (mediaParcial >= 7.0) {
    print("Aprovado com média $mediaParcial");
  } else if (mediaParcial >= 3.5) {
    print("Recuperação com média $mediaParcial");

    var notaNecessaria = (5.0 * 10 - mediaParcial * 6) / 4.0;
    print("Para ser aprovado, você precisa tirar $notaNecessaria na 4ª prova.");
  } else {
    print("Reprovado com média $mediaParcial");
  }
}
