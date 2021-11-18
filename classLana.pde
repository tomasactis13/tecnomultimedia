class Lana {
  float lx, ly, lx2, lx3, lvel, lvel2, lvel3;
  int ltam;
  float cant = 4;
  PImage[] lana = new PImage[4];
  Lana() {
    ly = -100;
    ltam = 30;
    lx = random(0, width);
    lvel = random(0.5, 2); 
    for (int l=0; l<lana.length; l++) { 
      lana[l] = loadImage("lana"+l+".png"); 
      lana[l].resize(ltam, ltam);
    }
  }
  void dibujarLana() {
    for (int l=0; l<cant; l++) { 
      image(lana[l], lx, ly); 
    }
  }
  void moverLana() {
    if ( ly>height ) {  
      ly = -100;
      lx = random(50, width-50);
      lvel = random(3, 8);
    }   
    ly+=lvel;
    /* 
     if ( ly2>height ) {
     ly = -100;
     lx2 = random(50, width-50);
     lvel = random(1, 3);
     }
     ly+=lvel;
     if ( ly3>height ) {  
     ly = -100;
     lx = random(50, width-50);
     lvel = random(1, 3);
     }
     ly+=lvel;*/
  }
}
