import 'dart:io';

void main() {
  stdout.write("Digite o tamanho do vetor: ");
  int tamanho = int.parse(stdin.readLineSync() ?? '0');

  List<int> vetor = List.filled(tamanho, 0);

  for (int i = 0; i < tamanho; i++) {
    stdout.write("Digite o elemento $i: ");
    vetor[i] = int.parse(stdin.readLineSync() ?? '0');
  }

  List<int> vetorInvertido = inverterVetor(vetor);
  print("Vetor invertido: $vetorInvertido");
}

List<int> inverterVetor(List<int> vetor) {
  List<int> invertido = List<int>.from(vetor.reversed);
  return invertido;
}
