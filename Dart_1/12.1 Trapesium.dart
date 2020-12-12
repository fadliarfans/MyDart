class Trapesium {
  double _a = 10;
  double _b = 20;
  double _t = 30;

  double get geta => _a;
  double get getb => _b;
  double get gett => _t;

  Trapesium() {                                         // ini constructor
    print('nilai sisi atas  = ' + _a.toString());
    print('nilai sisi bawah = ' + _b.toString());
    print('nilai tinggi     = ' + _t.toString());
  }
}
