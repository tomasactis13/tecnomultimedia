class Lana {
  float lx, ly, lx2, lx3, ly2, ly3, lvel, lvel2, lvel3;
  int ltam;
  PImage[] lana = new PImage[4];
  Lana() {
    ly = -100;
    ly2 = -100;
    ly3 = -100;
    ltam = 30;
    lx = random(0, 600);
    lx2 = random(0, 600);
    lx3 = random(0, 600);
    lvel = random(0.5, 2);
    lvel2 = random(0.5, 2);
    lvel3  = random(0.5, 2); 
    for (int l=-0; l<lana.length; l++) {
      lana[l] = loadImage("lana"+l+".png"); 
      lana[l].resize(ltam, ltam);
    }
  }

  void dibujarLana() {
    image(lana[0], lx, ly); 
    image(lana[1], lx2, ly2);
    image(lana[2], lx3, ly3);
  }
  void moverLana() {
    if ( ly>height ) {  
      ly = -100;
      lx = random(50, width-50);
      lvel = random(1, 3);
    }
    ly+=lvel;
    if ( ly2>height ) {
      ly2 = -100;
      lx2 = random(50, width-50);
      lvel2 = random(1, 3);
    }
    ly2+=lvel2;
    if ( ly3>height ) {  
      ly3 = -100;
      lx3 = random(50, width-50);
      lvel3 = random(1, 3);
    }
    ly3+=lvel3;
  }
}
