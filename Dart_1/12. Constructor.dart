import '12.1 Trapesium.dart';
import '12.2 AnakTrapesium.dart';
import '12.3 CucuTrapesium.dart';
import '12.4 Cicit Trapesium.dart';

void main(List<String> arguments) {
  Trapesium tp = Trapesium();                               // ketika object dideklarasikan maka method yang disebut constructor tersebut akan langsung berjalan
  print('---------------------------------------------');
  var atp = AnakTrapesium();                                // ketika object yang memiliki parent dan memliki constructor
  print('---------------------------------------------');   // maka constructor parentnya akan ikut berjalan juga
  var ctp = CucuTrapesium('Saya adalah CucuTrapesium');     // sesuai urutan dari yang tertinggi ke terendah
  print('---------------------------------------------');
  var itp = CicitTrapesium();
}
