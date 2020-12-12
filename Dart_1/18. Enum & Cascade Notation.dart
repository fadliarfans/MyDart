

void main(List<String> arguments){
  var a = Dragon()..move()..move2()..eat();         // menggunakan cascade notation

  print('------------------------');

  var b = Dragon(status: 3, status2 : dragonstatus.lari);
  print('ini penghalang cascade notation');
  b..move()..move2()..eat();

  print('------------------------');

  var c = Dragon(status: 2, status2 : dragonstatus.jalan);
  print('ini penghalang cascade notation');
  c
    ..move()
    ..move2()
    ..eat();
}

enum dragonstatus{terbang, jalan, lari}              // contoh enumeration

class Dragon{
  final int status;
  final dragonstatus status2;

  Dragon({this.status = 1, this.status2 = dragonstatus.terbang});

  void move(){
    switch(status){
      case 1:
        print('terbang melayang keren');
      break;
      case 2:
        print('jalan pelan');
      break;
      case 3:
        print('lari kencang');
      break;
      default:
        print('diem');
    }
  }

  void move2(){
    switch(status2){                               // jika menggunakan enumeration jadi tidak bingung lagi
      case dragonstatus.terbang:
        print('terbang melayang mantap');
        break;
      case dragonstatus.jalan:
        print('jalan santai');
        break;
      case dragonstatus.lari:
        print('lari borrrr');
        break;
      default:
        print('diem');
    }
  }


  void eat(){
    print('nyam-nyam');
  }

}