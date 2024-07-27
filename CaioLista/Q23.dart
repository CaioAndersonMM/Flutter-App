import 'dart:io';

void main() async{
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync() ?? '';

  List<String> palavras = frase.split(' ');


  Map<String, int> contagem = {};

  for (int i = 0; i < palavras.length; i++) {

    String palavra = palavras[i];

    if (contagem.containsKey(palavra)) {
      contagem[palavra] = contagem[palavra]! + 1;
    } else {
      contagem[palavra] = 1;
    }
  }

  // Exibe a contagem das letras
  print("Contagem de palavra na frase '$frase':");
  contagem.forEach((palavras, contagem) {
    print("$palavras = $contagem");
  });

  String caminho = 'contagem.csv';
  await salvarEmCSV(contagem, caminho);

  await lerEChecarCSV(caminho);

}

Future<void> salvarEmCSV(Map<String, int> contagem, String caminho) async {
  var arquivo = File(caminho);
  var sink = arquivo.openWrite();

  sink.writeln('Palavra,Contagem');
    contagem.forEach((palavra, contagem) {
    sink.writeln('$palavra,$contagem');
  });

  await sink.close();
}

Future<void> lerEChecarCSV(String caminho) async {
  var arquivo = File(caminho);

  if (await arquivo.exists()) {
    var linhas = await arquivo.readAsLines();

    print("\nConteúdo do arquivo CSV:");
    for (var linha in linhas) {
      print(linha);
    }
  } else {
    print("O arquivo $caminho não existe.");
  }
}
