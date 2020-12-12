class Person{
  String name;
  int age;
  int Maxage = 150;

  Person(this.name, age){
    this.age = (age > 50)? 150 : age;   // pake this dulu biar agenya dicek terlebih dahulu apakah melewati maxage
  }
}