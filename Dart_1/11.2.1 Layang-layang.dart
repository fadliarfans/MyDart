
import '11.1 Lingkaran.dart';
import '11.3.1 Siapasaya.dart';
import '11.3.2 Hanyalayanglayang.dart';

class Layanglayang extends Lingkaran with siapasaya{
  double _d1=3;
  double _d2=34;

  double get luasl => _d1*_d2;

  @override
  void kitaadalah() {
    // TODO: implement kitaadalah
    print("saya adalah layang-layang");
  }


  // class ini juga punya method dari class Siapasaya karena mixin
  // dan juga memiliki method dari lingkaran
}