
class SecureBox<tipe_data>{                 //fungsi dari generic adalah agar tipe data nya menjadi general sehingga lebih fleksibel
  final int _password;
  final tipe_data _isi;

  SecureBox(this._password,this._isi);

  tipe_data getisi(int input) => (input == _password)? _isi : null;
}