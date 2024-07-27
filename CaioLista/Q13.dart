import 'dart:io';
void main() {
  stdout.write("Numero fatorial: ");
  var fat = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  var som = 1;
  for (var i = fat; i >= 1; i--) {
    som *= i;
  }

  print("$som");

 }