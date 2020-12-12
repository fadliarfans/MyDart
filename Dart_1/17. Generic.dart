import '17.1 SecureBox.dart';

void main(List<String> arguments) {
  var box1 = SecureBox<int>(234, 085523538713);
  var box2 = SecureBox<String>(234, 'ini isi securebox');
  var box3 = SecureBox<DateTime>(234, DateTime.now());
  var box4 = SecureBox<tipedatabaru>(234, tipedatabaru(variabelisi: 32.4));
  var box5 = SecureBox<double>(234, 123.3);

  print(box1.getisi(234));
  print(box2.getisi(234));
  print(box3.getisi(234));
  print(box4.getisi(234).variabelisi);
  print(box5.getisi(900));

  print(tipedatabaru(variabelisi: 23.3).variabelisi);
}

class tipedatabaru {
  double variabelisi = 90.9;
  tipedatabaru({this.variabelisi});
}
