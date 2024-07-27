import 'dart:io';

void main() {
  stdout.write("Digite o peso em quilogramas: ");
  var pesoInput = stdin.readLineSync();
  var peso = double.tryParse(pesoInput ?? '') ?? 0.0;

  stdout.write("Digite a altura em metros: ");
  var alturaInput = stdin.readLineSync();
  var altura = double.tryParse(alturaInput ?? '') ?? 0.0;

  if (peso <= 0 || altura <= 0) {
    print("Erro: O peso ou a altura deve ser um valor positivo!");
    return;
  }

  var imc = (peso / (altura * altura)).toStringAsPrecision(3);
  print("O IMC é: $imc");
}