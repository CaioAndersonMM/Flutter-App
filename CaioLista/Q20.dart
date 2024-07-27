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

  String toRecord() {
    return '$nome,$peso,$altura,$imc';
  }

  factory Pessoa.fromRecord(String record) {
    var parts = record.split(',');
    return Pessoa(
      nome: parts[0],
      peso: double.parse(parts[1]),
      altura: double.parse(parts[2]),
    );
  }
}

void main() async{
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

  await saveToFile(pessoas, 'pessoas.bin');

  List<Pessoa> pessoasDoArquivo = await readFromFile('pessoas.bin');

  print("\nLista de pessoas cadastradas:");
  for (var pessoa in pessoasDoArquivo) {
    print(pessoa);
  }

}

Future<void> saveToFile(List<Pessoa> pessoas, String path) async {
  var file = File(path);
  var sink = file.openWrite();
  for (var pessoa in pessoas) {
    sink.writeln(pessoa.toRecord());
  }
  await sink.close();
}

Future<List<Pessoa>> readFromFile(String path) async {
  var file = File(path);
  List<Pessoa> pessoas = [];
  if (await file.exists()) {
    var lines = await file.readAsLines();
    for (var line in lines) {
      if (line.isNotEmpty) {
        pessoas.add(Pessoa.fromRecord(line));
      }
    }
  }
  return pessoas;
}
