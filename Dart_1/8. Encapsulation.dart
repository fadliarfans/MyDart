import '8.1 Segitiga.dart';
import '8.2 Segitiga-WithProperty.dart';

void main(List<String> arguments) {
  segitiga sgt1;
  segitiga2 sgt2;

  sgt1 = segitiga();
  sgt1.setalas(-5);
  sgt1.settinggi(5);

  print('Menggunakan Getter dan Setter ');
  print(sgt1.getalas());
  print(sgt1.gettinggi());
  print(sgt1.hitungluas());

  print('');
  
  sgt2 = segitiga2();
  sgt2.alas = -4;
  sgt2.tinggi = 43;

  print('Menggunakan Property');
  print(sgt2.alas);
  print(sgt2.tinggi);
  print(sgt2.luas);
  
  

}
