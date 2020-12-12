
import '13.1 Persegi.dart';

void main(List<String> arguments){
  var p = Persegi('Persegi anjay',sisi: sisisaya);            // yang ini
  p.launch();

  var t = Persegi('Persegi kocak',sisi:(String nama){        // dan yang ini sama
    print('$nama punya sisi sebanyak 4');
  });
  t.launch();

  var g = Persegi('Persegi kocak',sisi:(_){                   // Parameter Underscore dengan mengignore nilai parameter untuk tidak membuang-buang memory
    print('Persegi mantopp punya sisi sebanyak 4');
  });
  g.launch();


}

void sisisaya(String nama){
  print('$nama memiliki sisi sebanyak 4');
}