import 'dart:math';
import 'dart:io';

void main() {
  // Solicita os coeficientes da equação ao usuário
  stdout.write("Digite o coeficiente 'a' da equação: ");
  var a = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write("Digite o coeficiente 'b' da equação: ");
  var b = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write("Digite o coeficiente 'c' da equação: ");
  var c = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  // Calcula o delta
  var delta =  (b * b) - (4 * a * c);

  calcularRaizes(a, b, delta);
}

void calcularRaizes(double a, double b, double delta) {
  if (delta > 0) {
    var x1 = (-b + sqrt(delta)) / (2 * a);
    var x2 = (-b - sqrt(delta)) / (2 * a);
    print("As raízes da equação são: x1 = $x1 e x2 = $x2");
  } else if (delta == 0) {
    var x = -b / (2 * a);
    print("A equação possui uma raiz dupla: x = $x");
  } else {
    print("A equação não possui raízes reais.");
  }
}
  