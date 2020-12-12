class segitiga2 {                   // class outside main program
  double _alas;                     // private field
  double _tinggi;

    void set alas(double value){    // property
      if(value<0)
      {
        value*=-1;
      }
    _alas = value;
  }

  void set tinggi(double value){   // property
    if(value<0)
    {
      value*=-1;
    }
    _tinggi = value;
  }

  double get alas{                // property
    return _alas;
  }

  double get tinggi{               // property
    return _tinggi;
  }

  double get luas => _alas*_tinggi*0.5;  // megapa tidak menggunakan method,
                                         // karena 'luas' itu lebih ke kepemilikan




}