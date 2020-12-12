import '11.3.1 Siapasaya.dart';

class Lingkaran with siapasaya {
  double _r = 49;
  double _phi = 3.14;

  void set setr(double i) {
    _r = i;
  }

  set setphi(double i) {     // sama aja kaya void set
    _phi = i;
  }

  double get getr => _r;
  double get getphi => _phi;
  double get luas => _r * _phi * _r;

  void kitaadalah(){
    print('Saya adalah Lingkaran');
  }


  // class ini memiliki method class Siapasaya karena mixin
}
