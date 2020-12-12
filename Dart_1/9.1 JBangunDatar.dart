class Bangundatar{
  double _x;
  double _y;

  void set setpanjang1(double value) => _x = (value<0)? value*-1:value;
  double get getpanjang1 => _x;

  void set setpanjang2(double value)  => _y = (value<0)? value*-1:value;
  double get getpanjang2 => _y;

}