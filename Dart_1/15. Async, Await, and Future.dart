
void main(List<String> arguments) async {
  var p = Person();

  print('method yang sync');
  print('--------------------');
  print('');

  print('job 1');
  print('job 2');
  p.getname();                          // ketika fungsi dipanggil maka akan ditungu dulu samapi selesai fungsinya
  print('job 3 : '+p.name);
  print('job 4');

  print('');
  print('method yang async');
  print('--------------------');
  print('');

  print('job 1');
  print('job 2');
  await p.getnameasync();        // ketika fungsinya dipanggil maka tidak ditungguin sampai funsginya selesai
  print('job 3 : '+p.name);      // sehingga harus menggunakan await agar ditungguin
  print('job 4');

  print('');
  print('method yang async versi lebih urut');
  print('--------------------');
  print('');

  print('job 1');
  print('job 2');
  p.getnameasync().then((value) {        // menggunakan then yang artinya syntax akan dikerjakan jika fungsi sudah selesai berjalan
     print('job 3 : '+p.name);
   });
  print('job 4');

 /* print('');                                       Versi lebih singkat
  print('method yang async versi lebih urut mk2');
  print('--------------------');
  print('');

  print('job 1');
  print('job 2');
  p.getnameasync().then((_) => print('job 3 : '+p.name));   // value diganti _ karena void(tidak ada return valuenya dari fungsinya)
  print('job 4');*/

}

class Person{
  String name;

  void getname(){
    name = 'joko';
    print('[done]');
  }

  Future<void> getnameasync() async {
    await Future.delayed(Duration(seconds : 3));   // menggunakan await agar program menunggu future.dela.. selesai dijalankan
    name = 'joko dragon';                          // jadi kesimpulannya jika menggunakan async, kita dapat menentukan fungsi mana yang mesti ditunguin (dengan await) dan yang mana tidak mesti ditungguin
    print('[done]');
  }

}