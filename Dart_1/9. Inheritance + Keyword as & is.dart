import '9.1 JBangunDatar.dart';
import '9.3.1 PersegiPanjang-anak1.dart';
import '9.3.2 PersegiPanjang-anak2.dart';
import '9.2 PersegiPanjang.dart';

void main(List<String> arguments) {
  Bangundatar bd = Bangundatar();                             //identifier
  Persegipanjang pp = Persegipanjang();
  Persegipanjanganak1 ppa1 = Persegipanjanganak1();
  Persegipanjanganak1 ppaa1 = Persegipanjanganak1();
  Persegipanjanganak2 ppa2 = Persegipanjanganak2();
  Persegipanjang pp2 = Persegipanjanganak2();

  List<Persegipanjang> pope = [];                            // List

  pope.add(pp);
  pope.addAll([pp, ppa1, ppa2]);
  pope.addAll([pp, ppa1, ppa2]);


  List<Bangundatar> bode = [bd, pp, ppa1, ppa2, pp2, ppaa1];

  pp.setpanjang1 = 10;                                      // pp or Persegipanjang is child of Bangundatar
  pp.setpanjang2 = 20;                                      // set
  print(pp.getluas);                                        // get

  print(ppa1.anak1());                                      // ppa1 is child of Persegipanjang
  print(ppa2.anak2());                                      // method

  ppa1.setpanjang1 = 100;
  ppa1.setpanjang2 = 200;
  print(ppa1.getluas);

  print((pp2 as Persegipanjanganak2).anak2());              // pp2 have Persegipanjang type but have value Persegipanjanganak2 so
  print('');                                                // if we want to use method from Persegipanjanganak2, we must add as
  for (pp in pope) {
    if (pp is Persegipanjanganak2) {                        // if the objek is Persegipanjanganak2  so true
      print(pp.getpanjang1);
      print(pp.getpanjang2);
    }
  }

  print('');

  for(bd in bode) {
    print(bd.getpanjang1);
    bd.setpanjang1 = 1034;
  }

  print('');

  for(bd in bode) {
    print(bd.getpanjang1);
  }

}
