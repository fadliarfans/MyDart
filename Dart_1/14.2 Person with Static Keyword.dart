class Person2{
  String name;
  int age;
  static int Maxage = 150;        // static keyword berfungsi agar field atau method menjadi mlik class bukan objek
                                  // sehingga irit memori karena jika banyak objek yang dbuat memori tdak nambah
  Person2(this.name, age){
    this.age = (age > 50)? 150 : age;
  }
}