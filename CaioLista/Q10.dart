import 'dart:io';

void main() {
  stdout.write("Investimento inicial: ");
  double investimentoInicial = double.parse(stdin.readLineSync() ?? '0');

  stdout.write("Investimento mensal: ");
  double investimentoMensal = double.parse(stdin.readLineSync() ?? '0');

  stdout.write("Quantidade de meses: ");
  int quantidadeMeses = int.parse(stdin.readLineSync() ?? '0');

  stdout.write("Taxa de juros mensal: ");
  double taxaJurosMensal = double.parse(stdin.readLineSync() ?? '0') / 100;

  double saldoAcumulado = investimentoInicial;
  for (int mes = 1; mes <= quantidadeMeses; mes++) {
    double rendimentoMensal = saldoAcumulado * taxaJurosMensal;
    saldoAcumulado += rendimentoMensal + investimentoMensal;

    print("Mês $mes:");
    print("Rendimento mensal: R\$${rendimentoMensal}");
    print("Saldo acumulado: R\$${saldoAcumulado}\n");
  }

  print("Saldo acumulado após $quantidadeMeses meses: R\$${saldoAcumulado}");
}
