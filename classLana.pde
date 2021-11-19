class Lana {
  float lx, ly, lx2, lx3, lvel, lvel2, lvel3;
  int ltam;
  float cant = 4;
  PImage[] lanaImagen = new PImage[4];
  String nombrelana; 
  Lana(String ID_) {
    nombrelana = ID_;
    ly = -100;
    ltam = 30;
    lx = random(0, width);
    lvel = random(5, 10); 
    for (int l=0; l<lanaImagen.length; l++) { 
      lanaImagen[l] = loadImage("lana"+l+".png"); 
      lanaImagen[l].resize(ltam, ltam);
    }
  }
  void dibujarLana() {
    println(nombrelana);
    if (nombrelana == "azul") {

      image(lanaImagen[0], lx, ly);
    }
    if (nombrelana == "verde") {
      image(lanaImagen[1], lx, ly);
    }  
      if (nombrelana == "rojo") {
      image(lanaImagen[2], lx, ly);
      }

  }
  void moverLana() {
    if ( ly>height ) {  
      ly = -100;
      lx = random(50, width-50);
      lvel = random(3, 8);
    }   
    ly+=lvel;
   
  }
}
