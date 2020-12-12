void main(List<String> arguments) {
  var mylist = <int>[];                         // empty list
  var mylist2 =  <int>[1, 2, 3, 4, 5];          // new form list
  List<int> mylist3 = [1, 2, 3, 4, 5];          // original form
  List<int> mylist4 = [1 ,2 ,3 ,4 ,5];
  List<int> mylist5 = [1 ,2 ,3 ,4 ,5];
  List<int> mylist6 = [2 ,4 ,6 ,8, 10];

  var a = mylist2[0];                           // insert variable with list
  print(a);
  print('');

  mylist.add(10);                                           // add 10 to mylist2
  mylist.addAll(mylist3);                                   // add mylist3 to mylist
  mylist.insert(1, 1324);                                   // insert list but just one with start index
  mylist.insertAll(3, [1,234,5,3]);                         // insert list with start index
  mylist2.remove(3);                                        // remove value 3 (but just one) and the first only
  mylist2.removeLast();                                     // remove last
  mylist2.removeAt(0);                                      // remove at index 0
  mylist3.removeRange(0, 3);                                // remove range 0..3 and 3 is exclusive
  mylist3.removeWhere((number) => number % 2 != 0);         // remove odd number
  mylist4 = mylist.sublist(3,5);                            // to replace mylist4 values with mylist values from index 3 to 5 but 5 is exclusive
  mylist5.clear();                                          // clear all values in mylist5

  if(mylist.contains(10)){                                 // to check in mylist if there is a value of 100
    print('Ada angka 10');
    print('');
  }

  print('Di bawah ini mylist ');
  print(' ');

  for (var index = 0; index < mylist.length; index++) {    // for old style
    print(mylist[index]);
  }

  print('');
  print('Di bawah ini mylist2 ');
  print(' ');


  for(var index in mylist2){                                 // for new style
    print(index);
  }

  print('');
  print('Di bawah ini mylist3 ');
  print(' ');


  mylist3.forEach((index) {print(index);});                  // foreach

  print('');
  print('Di bawah ini mylist4 ');
  print(' ');

  mylist4.forEach((index) {print(index);});                  // foreach

  print('');
  print('Di bawah ini mylist yang sudah di sort ');
  print(' ');


  mylist.sort();                                             // sort
  mylist.forEach((index) {print(index); });

  print('');
  print('Di bawah ini mylist yang sudah di sort descending ');
  print(' ');


  mylist.sort((a,b)=> b-a);                                  // sort plus function
  mylist.forEach((element) {print(element);});

  print(' ');

  if(mylist6.every((element) => element % 2 != 0 )){        // to check if mylist6 all values are odd
    print('ganjil semua ');
  }
  else{
    print('ada yang tidak ganjil');
  }

   print(' ');

  if(mylist5.isEmpty){                                        // to check list, it is empty or not
    print('mylist5 kosong isinya');
  }

  if(mylist5.isNotEmpty){                                     // to check list, it is empty or not
    print('mylist5 tidak kosong');
  }

  print('');
  print('Di bawah ini myset');
  print('');


  Set<int> myset;                                           // set is like list but the differrent is set unique. there is no same values in set
  myset = mylist.toSet();                                   // to transform list into set
  myset.forEach((element) {print(element);});

  print('');

  var mylist7 = <String>[];
  List<int> mylist8 = [1,2,3,4,5,6,7];


  mylist8.forEach((element) {mylist7.add(element.toString());});               //old style map
  mylist7.forEach((element) {print('mylist8 isinya jadi : '+element);});

  print('');

  var mylist9 = <String>[];
  var mylist10 = <int> [2,4,6,4,3,4,5,];

  mylist9 = mylist10.map((element) => 'mylist9 jadinya : '+element.toString()).toList();   // new style map
  mylist9.forEach((element) {print(element);});








  





}
