import 'dart:io';

int persegi_panjang(int p, int l) {                                                // functions
  return p * l;
}

double lingkaran(double r) => r * r * 3.14;                                         // functions with lambda

String hello(String nama, String alamat, [String notelp, String sekolah]) {         // functions with positional parameter
  return 'nama saya ' + nama + ' saya tinggal di ' + alamat +
      ((notelp != null) ? ' no telp ' + notelp : ' ') +
      ((sekolah != null) ? ' saya sekolah di ' + sekolah : ' ');
}

String hello2(String nama, String alamat, {String notelp, String sekolah}) {        // functions with named parameter
  return 'nama saya ' + nama + ' saya tinggal di ' + alamat +
      ((notelp != null) ? ' no telp ' + notelp : ' ') +
      ((sekolah != null) ? ' saya sekolah di ' + sekolah : ' ');
}

String hello3(String nama, String alamat, {String notelp = '34324', String sekolah='UGB'}) {  // functions with default parameter value
  return 'nama saya ' + nama + ' saya tinggal di ' + alamat +
      ((notelp != null) ? ' no telp ' + notelp : ' ') +
      ((sekolah != null) ? ' saya sekolah di ' + sekolah : ' ');
}

void tampil(int x){                                                                           // functions without returns value
  print(x);
}


void main(List<String> arguments) {
  var x = int.tryParse(stdin.readLineSync());
  var y = int.tryParse(stdin.readLineSync());
  var z = double.tryParse(stdin.readLineSync());

  print(persegi_panjang(x, y));
  print(lingkaran(z));
  print('1 ' + hello('fadli', 'bekasi'));
  print('2 ' + hello('fadli', 'bekasi', '09323232', 'Bonlap'));
  print('3 ' + hello2('fadli', 'bekasi'));
  print('4 ' + hello2('fadli', 'bekasi', notelp: '09323232'));
  print('5 ' + hello2('fadli', 'bekasi', sekolah: 'Bonlap'));
  print('6 ' + hello2('fadli', 'bekasi', notelp: '09323232', sekolah: 'Bonlap'));
  print('7 ' + hello2('fadli', 'bekasi', sekolah: 'Bonlap', notelp: '09323232'));
  print('8 ' + hello3('fadli', 'bekasi'));
  tampil(y);
}
