import 'dart:io';
void main() {
  var numero = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  switch (numero) {
    case 1:
      print("Um");
      break;
    case 2:
      print("Dois");
      break;
    case 3:
      print("Três");
      break;
    case 4:
      print("Quatro");
      break;
    case 5:
      print("Cinco");
      break;
    default:
      print("Valor inválido!");
  }
}
