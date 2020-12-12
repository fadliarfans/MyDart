abstract class Bangundatar{    // Kalo abstract class, class tersebut hanya menjadi template untuk anaknya
  double _x;
  double _y;

  double get getalas => _x;
  double get gettinggi => _y;

  void set setalas(double alas){
    _x = alas;
  }

  void set settinggi(double tinggi){
    _y = tinggi;
  }

  String sisi();   // harus di implementasi oleh anaknya agar tidak eror
  void siapakau(); // tidak harus memiliki method body karena bangudatar  class yang abstract
}