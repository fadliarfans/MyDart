void main(List<String> arguments) {

  for (var counter = 0; counter < 10; counter++) {
    print('Dragon');
  }

  print('--------------------------------------------');

  var i = 0;
  while (i < 10) {
    print('i sama dengan : ' + i.toString());
    i++;
  }

  print('--------------------------------------------');

  i =0;
  do{
    print('i sama dengan : '+i.toString());
    i++;
  }while(i< 10);

  print('--------------------------------------------');

  int a,b;
  a = 100;
  b = a++;
  print(b.toString()+' = '+a.toString());           // b = 100  dan a = 101

  print('--------------------------------------------');

  a = 100;
  b = ++a;
  print(b.toString()+' = '+a.toString());           // b = 101 dan a = 101




}
