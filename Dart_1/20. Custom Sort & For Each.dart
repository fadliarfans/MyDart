
void main(List<String> arguments){

  List<Person> persons = [
    Person('Administrator',32),
    Person('User', 52),
    Person('Administrator', 20),
    Person('Merchant', 52),
    Person('Administrator', 23),
    Person('User', 22),
    Person('Merchant', 22),
    Person('User', 12),
    Person('Merchant', 55),
  ];

  print('Yang biasa');
  persons.forEach((element) {                                // foreach untuk looping isi dari suatu list sampe abis
    print(element.role + ' - ' +element.age.toString());
  });
  print('-------------------------');
  print('');

  persons.sort((p1, p2) => p1.age - p2.age);                // sorting, p1.age - p2.age maksudnya adalah jika hasil pengurangan tersebut negatif maka p1.age ditaro di sebelah kiri
                                                            // jika positif maka p1.age ditaro di kanan
  print('Yang agenya di sort');
  persons.forEach((element) {
    print(element.role + ' - ' +element.age.toString());
  });
  print('-------------------------');
  print('');

  /*persons.sort((a, b) => a.role.compareTo(b.role));        // menggunakan method compare default (sesuai abjad)

  print('yang rolenya di sort');
  persons.forEach((element) {
    print(element.role + ' - ' +element.age.toString());
  });

  print('-------------------------');
  print('');*/


  persons.sort((x, y){                                      // sorting role dan age sekaligus
    if(x.role.compareTo(y.role) != 0) {                     // pertama-tama di compare dulu yang role
      return x.role.compareTo(y.role);                      // kalo tidak sama maka yang di return adalah comparen yang role
    } else {                                                // kalo sama baru ngecompare yang age(biar agenya juga terurut)
      return x.age.compareTo(y.age);
    }
  });

  print('Yang keduanya di sort');
  persons.forEach((element) {
    print(element.role + ' - ' +element.age.toString());
  });
  print('-------------------------');
  print('');


  persons.sort((x, y){                                     // costum sort
    if(x.role.compareTo(y.role) != 0) {                    // yaitu ditentukan dulu berat dari masing-masing role
      return x.weightrole.compareTo(y.weightrole);         // kemudian di sort dari yang terkecil
    } else {
      return x.age.compareTo(y.age);
    }
  });

  print('Yang keduanya di sort tetapi di custom');
  persons.forEach((element) {
    print(element.role + ' - ' +element.age.toString());
  });
  print('-------------------------');
  print('');

}

class Person{
  final String role;
  final int age;

  Person(this.role, this.age);

  int get weightrole{
    switch(role){
      case 'Merchant':
        return 1;
        break;
      case 'Administrator':
        return 2;
        break;
      default:
        return 3;
    }
  }
}