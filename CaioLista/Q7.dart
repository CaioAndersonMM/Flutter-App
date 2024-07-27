import 'dart:io';
void main() {
  print("While");
  stdout.write("De: ");
  var de = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write("Ate: ");
  var ate = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  var temp = de;
  while (temp <= ate) {
    if (temp % 2 == 0) {
      print(temp.toString());
    }
    temp++;
  }

  print("Do-While");
  temp = de;
  do {
    if (temp % 2 == 0) {
      print(temp.toString());
    }
    temp++;
  } while (temp <= ate);

  print("For");
  for (int i = de; i <= ate; i++) {
    if (i % 2 == 0) {
      print("$i");
    }
 
  }
 }