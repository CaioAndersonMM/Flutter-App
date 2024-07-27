import 'dart:io';

void main() {
  // Solicitar ao usuário as dimensões da matriz
  stdout.write("Digite o número de linhas da matriz: ");
  int linhas = int.parse(stdin.readLineSync() ?? '0');

  stdout.write("Digite o número de colunas da matriz: ");
  int colunas = int.parse(stdin.readLineSync() ?? '0');

  List<List<int>> matriz = List.generate(linhas, (_) => List.filled(colunas, 0));

  for (int i = 0; i < linhas; i++) {
    for (int j = 0; j < colunas; j++) {
      stdout.write("Digite o elemento [$i][$j]: ");
      matriz[i][j] = int.parse(stdin.readLineSync() ?? '0');
    }
  }

  print("\nElementos da matriz:");
  for (int i = 0; i < linhas; i++) {
    for (int j = 0; j < colunas; j++) {
      stdout.write("${matriz[i][j]} ");
    }
    print("");
  }
}
