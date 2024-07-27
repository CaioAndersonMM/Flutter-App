import 'dart:io';
void main() {
  String password = "caio123";

  
  print("Digite sua senha: ");
  String? senha = stdin.readLineSync() ?? '';

  while (senha != password) {
    print('Senha incorreta');
    senha = stdin.readLineSync() ?? '';
  }

  print('Senha correta');

  print("Digite sua senha para o doWhile: ");
  String? senhadoWhile;
  do {
    senhadoWhile = stdin.readLineSync() ?? '';
    if (senhadoWhile != password) {
      print('Senha incorreta');
    }
  } while (senhadoWhile != password);

  print('Senha correta');

 }