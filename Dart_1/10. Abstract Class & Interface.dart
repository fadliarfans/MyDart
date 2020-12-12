
import '10.2.1 Persegi.dart';
import '10.2.2 Segitiga.dart';
import '10.3 Segitiga-anak1.dart';
import '10.4 Segitiga-cucu1.dart';
import '10.6 Segitiga + Persegi.dart';

void main(List<String> arguments){
  // Bangundatar bd = Bangundatar(); tidak bisa karena class bangundatar disini hanya menjadi template
  Segitiga s = Segitiga();
  Segitigaanak1 sa = Segitigaanak1();
  Segitigacucu1 sc = Segitigacucu1();
  var p = Persegi();
  var sp = SegitigaPersegi();


  s.settinggi = 100;
  s.setalas = 50;
  double x = s.getalas;
  print(x);

  s.siapakau();
  p.siapakau();
  sp.siapakau();
  sa.anak();             // method anak punya sa
  sc.anak();             // method anak punya sc
  sp.anak();             // method anak punya sp
  print('-------------------------------------------------------------------');
  print(p.sisi());              // implementasi method sisi dari class persegi
  print(s.sisi());              // implementasi method sisi dari class segitiga
  print(sp.sisi());             // implementasi method sisi dari class segitigapersegi
  print('-------------------------------------------------------------------');
  print(p.B());          // inteface => method bentuk dari class persegi
  print(sp.B());         // inteface => method bentuk dari class persegi



}