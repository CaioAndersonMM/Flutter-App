import 'dart:io';
void main() {
  stdout.write("De: ");
  var de = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write("Ate: ");
  var ate = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  var temp = 0;
  
  while (de <= ate) {
    temp+= de;
    de++;
  }

  print("$temp");

 }