
import '14.1 Person.dart';
import '14.2 Person with Static Keyword.dart';

void main(List<String> arguments){

var p11 = Person('Jago', 140);          // tidak menggunakan static keyword
var p12 = Person('Sapi', 210);          // sehingga boros memory

var p20 = Person2('Ayam', 154);         // tidak boros memory, karena field dimiliki oleh class bukan objek

print(p11.Maxage);       // maxage kesannya hanya dimiliki oleh 1 objek
print(Person2.Maxage);   // maxage dimiliki oleh class person2 sehingga tidak boros memori


}