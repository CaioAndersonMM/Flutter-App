import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print("Menu:");
    print("1 - Potenciação");
    print("2 - Raiz quadrada");
    print("3 - Fatorial");
    print("0 - Sair");
    stdout.write("Escolha uma opção: ");
    int opcao = int.parse(stdin.readLineSync() ?? '0');

    switch (opcao) {
      case 1:
        stdout.write("Digite a base: ");
        double base = double.parse(stdin.readLineSync() ?? '0');
        stdout.write("Digite o expoente: ");
        double expoente = double.parse(stdin.readLineSync() ?? '0');
        num resultado = pow(base, expoente);
        print("Resultado: $base^$expoente = $resultado\n");
        break;
      case 2:
        stdout.write("Digite um número: ");
        double numero = double.parse(stdin.readLineSync() ?? '0');
        if (numero < 0) {
          print("Não é possível calcular a raiz quadrada de um número negativo.\n");
        } else {
          double resultado = sqrt(numero);
          print("Resultado: √$numero = $resultado\n");
        }
        break;
      case 3:
        stdout.write("Digite um número inteiro: ");
        int numero = int.parse(stdin.readLineSync() ?? '0');
        if (numero < 0) {
          print("Não é possível calcular o fatorial de um número negativo.\n");
        } else {
          var resultado = fatorial(numero);
          print("Resultado: $numero! = $resultado\n");
        }
        break;
      case 0:
        print("Saindo...");
        return;
      default:
        print("Opção inválida. Tente novamente.\n");
        break;
    }
  }
}

// Função para calcular o fatorial
int fatorial(int n) {

  var som = 1;
  for (var i = n; i >= 1; i--) {
    som *= i;
  }

  return som;
}
