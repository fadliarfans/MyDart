

const contoh1 = 3;                    // konstanta yang ada di toplevel

void main(List<String> arguments) {

  final int k = 3;                     // final untuk membuat sebuah pointer yang menunjuk pada objek yang sama seterusnya
                                       // final harus langsung diiniisasi atau bisa juga lewat constructor
                                       // dan isi dari variabel tersebut tidak bisa diubah lagi
                                       // final bisa dibuat di mana saja

  const int contoh2 = 3;               // nilai pada konstanta diasosiasikan pada objek yang sama
                                       // konstanta dibuat ketika compile time sehingga meningkatkan performa
                                       // karena ketika sudah di runtime, program tidak membuat objek baru lagi
                                       // karena objek sudah dibuat ketika compile time
                                       // hanya bisa dibuat di top level/global dan static/locale

  var a = Regularclass(x: 5);          // class yang biasa
  var b = Regularclass(x: 5);          // variabel a dengan variabel b tidak identik karena berbeda objek
  var i = b;                           // variabel b dengan i identik karena objeknya sama
                                       // variabel a,b,dan i hanya sebuah pointer/identifier/reference/penunjuk
                                       // jadi isi dari variabel tersebut hanyalah alamat si objek bukan objekya

  var c = const Constclass(x: 5);      // class yang menggunakan konstanta
  var d = const Constclass(x: 5);

  print(identical(a, b));              // walaupun a dan b nilainya sama tetapi a dan b tidak identik karena 2 objek yang berbeda
  print(identical(c, d));              // objek c dan objek d identik karena sama sama mengunakan objek yang sama
                                       // ketika di objek c deklarasikan const Constclass(x:5.... maka objek d saat dideklarasikan
                                       // akan mengecek apakah sudah ada konstantanya, jika ada maka objek d menggunakan objek yang sudah ada
}

class Regularclass {
  static const contoh3 = 34;          // konstanta yang ada di local
  final int x;
  Regularclass({this.x});
}

class Constclass {
  final int x;
  const Constclass({this.x});
}
