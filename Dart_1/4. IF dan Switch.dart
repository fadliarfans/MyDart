import 'dart:io';

void main(List<String> arguments) {
  var number = int.tryParse(stdin.readLineSync());

  if (number > 0) {                                    // if ,if else, else
    print('Positif');
  } else if (number < 0) {
    print('negatif');
  } else {
    print('Bilangannya enol');
  }

  var output = (number > 0)
      ? 'Positif'
      : 'Negatif atau bilangan enol';                 // pengganti if dan else
  print(output);
  print((number > 0) ? number : number * -1);

  switch(number) {                                     // switch
    case 0:
      print('nol');
      break;
    case 1:
      print('satu');
      break;
    case 2:
      print('dua');
      break;
    default:
      print('mantoppp');
  }
}
