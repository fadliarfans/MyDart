class segitiga {                            // class outside main program
  double _alas;                             // private field
  double _tinggi;                           // private field

  void setalas(double value) {              // setter = method untuk menyetel field yang di private
    if (value < 0) {
      value *= -1;
    }
    _alas = value;
  }

  void settinggi(double value) {            // setter = method untuk menyetel field yang di private
    if (value < 0) {
      value *= -1;
    }
    _tinggi = value;
  }

  double getalas() => _alas;                // getter = method untuk mendapatkan nilai dari field yang di private
  double gettinggi() => _tinggi;            // getter = method untuk mendapatkan nilai dari field yang di private




  double hitungluas() {
    return _alas * _tinggi * 0.5;
  }
}
