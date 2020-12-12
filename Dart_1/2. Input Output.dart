import 'dart:io';

void main(List<String> arguments) {
  String input = stdin.readLineSync(); // input string
  int a = int.tryParse(input);         // change string to Integer
  print(a + 10);
}
