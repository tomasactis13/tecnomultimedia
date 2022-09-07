class Paloma {

  FCircle Paloma;
  Boolean izqPresionado, derPresionado;
  Boolean volarPresionado;



  Paloma() {

    /* for (int p=0; p<pajaro.length; p++) {
     pajaro[p] = loadImage("pajaro"+p+".png");       
     pajaro[p].resize(120, 120);
     }*/
    pajaro0 = loadImage("pajaro0.png");
    pajaro0.resize(120, 120);
    pajaro0b = loadImage("pajaro0b.png");
    pajaro0b.resize(120, 120);
    pajaro1 = loadImage("pajaro1.png");
    pajaro1.resize(120, 120);
    pajaro2 = loadImage("pajaro2.png");
    pajaro2.resize(120, 120);
    pajaro3 = loadImage("pajaro3.png");
    pajaro3.resize(120, 120);
  }


  void inicializar(float _x, float _y) {

    izqPresionado = false;
    derPresionado = false;
    volarPresionado = false;
  }


  void actualizar() {
    if (izqPresionado) {
      Paloma.setVelocity(-90, Paloma.getVelocityY());
      Paloma.setFill(0);
      direccion = "izq";
    }
    if (derPresionado) {
      Paloma.setVelocity(90, Paloma.getVelocityY());
      Paloma.setFill(255);
      direccion = "der";
    }
    if (!izqPresionado && !derPresionado) {
      Paloma.setVelocity(0, Paloma.getVelocityY());
    }
    if (volarPresionado) {
      Paloma.setVelocity(Paloma.getVelocityX(), -320);
    }
    if (direccion == "der") {
      Paloma.attachImage(pajaro0);
    }
    if (direccion == "izq") { 
      Paloma.attachImage(pajaro0b);
    }
  }

  void dibujarP() {
    Paloma = new FCircle(50);
    Paloma.setPosition(50, 250);
    Paloma.setStatic(false);

    if (lombrices == 0) {
     Paloma.attachImage(pajaro0);
     }
     if (lombrices == 1) {
     Paloma.attachImage(pajaro1);
     }
     if (lombrices == 2) {
     Paloma.attachImage(pajaro2);
     }
     if (lombrices == 3) {
     Paloma.attachImage(pajaro3);
     }
    Paloma.setRotatable(false);
    Paloma.setName("paloma");
    mundo.add(Paloma);
  }
}
