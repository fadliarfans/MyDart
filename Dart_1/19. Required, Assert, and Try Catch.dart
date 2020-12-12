import 'package:meta/meta.dart';

void main(List<String> arguments){
  Person p;

  try {                            // try digunakan agar program terus berjalan walaupun ada yang error (tetapi harus ada di dalam bracket try)
    p = Person(name: null);        // error karena name yang seharusnya tidak boleh null malahan null
  }catch(e){                       // catch digunakan untuk menangkap message error dan e adalah variabel yang berisi massage error tersebut
    print(e);                      // print(e) yaitu mengoutputkan isi variabel e (isinya messege error tadi)
  }

  print('hello');

}

class Person{
  int age;
  int name;

  Person({@required this.name, this.age = 4}){           // required digunakan untuk mewajibkan optional parameter untuk diisi
    assert(name != null, 'jangan null woi');             // assert digunakan untuk memastikan bahwa nama tidak boleh null, jika benar-benar null maka program akan error dan akan ada message yang dikeluarkan
  }

}
