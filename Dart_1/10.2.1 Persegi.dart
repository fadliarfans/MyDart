
import '10.1 BangunDatar.dart';
import '10.5 Bentuk.dart';

class Persegi extends Bangundatar implements Bentuk{ // implements bisa dari banyak class ,tinggal dikasih koma aja kalo mau nambah
  @override
  String sisi() {
    // TODO: implement sisi
    return 'Sisi saya ada 4';
  }

  @override
  String B(){
    return 'Bentuknya seperti persegi';
  }

  @override
  void siapakau() {
    // TODO: implement siapakau
    print('Saya merupakan bangun datar persegi');
  }

}