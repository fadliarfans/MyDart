abstract class Bentuk{    // ini adalah interface
  String B();             // yaitu class yang berisi method yang akan digunakan oleh
}                         // class-class yang merupakan turunan dari class tertentu
                          // tapi masih kekurangan method, dan method tersebut dari class lain
                          // karena suatu class hanya bisa menjadi turunan dari 1 class saja
                          // maka class tersebut bisa implement method dari class lain dengan cara ini
                          // (tetapi method dari class lain tersebut harus dibuat terpisah terlebh dahulu)