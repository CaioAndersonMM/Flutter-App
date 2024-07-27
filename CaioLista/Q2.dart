import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Digite o valor do raio do círculo: ");
  var raioInput = stdin.readLineSync();
  var raio = double.tryParse(raioInput ?? '') ?? 0.0;

  if (raio <= 0) {
    print("Erro: O raio deve ser um valor positivo!");
    return;
  }

  var area = pi * (raio * raio);

  print("A área é: $area");
}