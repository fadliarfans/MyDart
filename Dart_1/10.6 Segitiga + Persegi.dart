
import '10.2.2 Segitiga.dart';
import '10.3 Segitiga-anak1.dart';
import '10.5 Bentuk.dart';

class SegitigaPersegi extends Segitiga implements Bentuk, Segitigaanak1{  // implements bisa dari banyak class ,tinggal dikasih koma aja kalo mau nambah
  @override
  String sisi() {
    // TODO: implement sisi
    return "Sisi saya ada 5";
  }

  @override
  String B() {
    // TODO: implement JM
    return "Bentuknya seperti rumah";
  }

  @override
  void siapakau() {
    // TODO: implement siapakau
    print('Saya merupakan bangun datar persegi + segitiga');
  }

  @override void anak() {
    // TODO: implement anak
    print("saya anak dari persegi dan segitiga");
  }

}