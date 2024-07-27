import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;
  double imc;

  Pessoa({required this.nome, required this.peso, required this.altura}) : imc = peso / (altura * altura);

  @override
  String toString() {
    return 'Nome: $nome, Peso: $peso, Altura: $altura, IMC: ${imc.toStringAsFixed(2)}';
  }
}

void main() {
  stdout.write("Digite a quantidade de pessoas: ");
  int quantidade = int.parse(stdin.readLineSync() ?? '0');

  List<Pessoa> pessoas = [];

  for (int i = 0; i < quantidade; i++) {
    stdout.write("Digite o nome da pessoa ${i + 1}: ");
    String nome = stdin.readLineSync() ?? '';

    stdout.write("Digite o peso da pessoa ${i + 1} (kg): ");
    double peso = double.parse(stdin.readLineSync() ?? '0');

    stdout.write("Digite a altura da pessoa ${i + 1} (m): ");
    double altura = double.parse(stdin.readLineSync() ?? '0');

    Pessoa pessoa = Pessoa(nome: nome, peso: peso, altura: altura);
    pessoas.add(pessoa);
  }

  // Exibir a lista de pessoas com seus respectivos atributos
  print("\nLista de pessoas cadastradas:");
  for (var pessoa in pessoas) {
    print(pessoa);
  }
}
