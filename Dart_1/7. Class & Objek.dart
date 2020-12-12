import 'dart:io';

void main(List<String> arguments){

  trapesium trapes1, trapes2;                                                 // identifier

  trapes1 = trapesium();                                                      // objek
  trapes1.alasbawah = double.tryParse(stdin.readLineSync());
  trapes1.alasatas = double.tryParse(stdin.readLineSync());
  trapes1.tinggi = double.tryParse(stdin.readLineSync());

  trapes2 = new trapesium();                                                  // 'new' is optional in dart
  trapes2.alasatas = 5;
  trapes2.alasbawah = 7;
  trapes2.tinggi = 10;

  print('');
  print('Luas Trapesium 1 = '+ trapes1.hitungluas().toString());
  var x = trapes2.hitungluas();                                               // ditampung di variabel
  print('Luas Trapesium 2 = '+ x.toString());

}

class trapesium{                                                              // class
   double alasatas;                                                           // field
   double alasbawah;                                                          // field  atau yang dimiliki
   double tinggi;                                                             // field

   double hitungluas(){                                                       // method or functions
     return (this.alasatas+alasbawah)/2*tinggi;                               // 'this' is optional in dart
   }

}