
class Persegi{
  String name;
  Function(String name) sisi;

  Persegi(this.name,{this.sisi});

  void launch(){
    if(sisi != null){
      sisi(name);
    }
  }
}