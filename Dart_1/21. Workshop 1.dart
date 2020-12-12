

void main(){
  Map<String, int> pointJson = {'x':10,'y':1};
  var pj = Point.fromJson(pointJson);
  print('x:${pj.x}, y:${pj.y}');

  var point = Point(4,3);
  var p = Point(3,2);
  print(point.x);
  point.x = 10;
  point.y = 24;
  p.x = 2;
  p.y = 4;
  print('x:${point.x}, y:${point.y}');
  print('x:${p.x}, y:${p.y}');

  var db = Database(host: 'localhost', port: 808);
  var db2 = Database(host: 'localhost', port: 888);
  print(db==db2);  // akan true karena walaupun db dan db2 merupakan objek berbeda , karena factory constructor menjadi instance yang sama

  var vec = Vector(5, 6);
  var ved = Vector(11, 3);
  var vecd = vec + ved;  // karena ada operator overloading
  print(vecd.x);
  print(vecd.y);

  print(6.inSecond()); // untuk memodifikasi tipe data default / class
}

class Point{
  int x;
  int y;
  Point(int x,int y){
    this.x = x;
    this.y = y;
  }
  // Point(this.x,this.y);  == Generative Constructor

  Point.fromJson(Map<String, int> json)   // Named constructor
    : x = json['x'],
      y = json['y'];

  Point.withAssert(this.x, this.y) : assert (x >= 0){   // Named costructor
    print('From withAsser : ($x, $y)');
  }

  Point.alongXAxis(int x) : this(x, 0);  // delegate Constructor  // this berarti mengakses member dari constructornya
  // this(x, 0) berarti memanggil constructor yang mirip dengan (x, 0) yaitu Point(int x, int y);
  // const Point(this.x, this.y);    // Const consturctor

  // final belum tentu diketahui saat compile time
  // cost harus ditetntukan saat compile time

  //Point(this.x, this.y); positional parameter
  //Point(this.x,[this.y]); opsional parameter
  //Point({this.x,this.y}); named parameter
}

class Database{
  static Database database;  // static artiya milik class buka milik objek
  String host;
  int port;
  factory Database({String host, int port}){  // factory constructor
    if(database == null){
      return database = Database._create(host, port);
    }
     return database;

  }
  Database._create(this.host,this.port);
}

class Vector{   // operator overloading
  int x,y;
  Vector(this.x,this.y);
  Vector operator + (Vector v) => Vector(x + v.x , y + v.y);   // agar classnya dapat menggunaka operator +
}

// implements wajib di override methodnya jika mixin tidak wajib

extension on int{  // untuk memodifikasi tipe data default atau class
  int inSecond(){
    return this * 60;
  }
}

// dart logic dan ui nya menggunakan bahasa pemrograman yang sama jadi tidak perlu markup language lagi seperti xml