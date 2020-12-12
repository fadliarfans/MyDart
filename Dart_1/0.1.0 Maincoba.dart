import '0.1.1 Classcoba.dart';
import '0.1.2 Anak1coba.dart';
import '0.1.3 Anak2coba.dart';

void main(List<String> arguments) {
  var a = Anak();
  var b = Anak2();

  // List<sapi> l = [a,b];
  var listcuy = <sapi>[a, b];

  for (var isilistcuy in listcuy) {
    if(isilistcuy is Anak) {
      print((isilistcuy as Anak).bagi());    // dikasih as untuk pembelajaran
    }
  }
}
