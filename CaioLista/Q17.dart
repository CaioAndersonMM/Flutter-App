import 'dart:io';

void main() {
  stdout.write("Digite o tamanho do vetor: ");
  int tamanho = int.parse(stdin.readLineSync() ?? '0');

  List<int> vetor = List.filled(tamanho, 0);

  for (int i = 0; i < tamanho; i++) {
    stdout.write("Digite o elemento $i: ");
    vetor[i] = int.parse(stdin.readLineSync() ?? '0');
  }

int maior = vetor[0];
  int menor = vetor[0];

  vetor.forEach((elemento) {
    if (elemento > maior) {
      maior = elemento;
    }
    if (elemento < menor) {
      menor = elemento;
    }
  });

  print("O maior número é: $maior");
  print("O menor número é: $menor");

}