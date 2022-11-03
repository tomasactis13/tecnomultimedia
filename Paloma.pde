class Paloma {
  float velocidad = 600;
  float angulo = radians (-80);
  Boolean spriteizquierda, spritederecha;
  Boolean volarPresionado;
  float vx, vy, x;
  PImage [] pajaro = new PImage [5];
  PImage  volar1, volar2, ImagenPaloma;
  int volarDer, volarIzq;

  String estadoVolar;

  Paloma() {
    for (int p=0; p<pajaro.length; p++) {
      pajaro[p] = loadImage("pajaro"+p+".png");
      pajaro[p].resize(120, 120);
    }
    volar1 = loadImage("pajaro1.png");
    volar1.resize(120, 120);
    volar2 = loadImage("pajaro2.png");
    volar2.resize(120, 120);
    Paloma = new FBox(50, 50);
    Paloma.setPosition(50, 650);
    //Paloma.attachImage(pajaro[0]);
    //Paloma.setVelocity(vx, vy);
    Paloma.setRotatable(false);
    Paloma.setStatic(false);
    Paloma.setName( "paloma" );
    Paloma.attachImage(pajaro[0]);
    estadoVolar = "nada";
    mundo.add(cadena);
    spriteizquierda = false;
    spritederecha = false;
  }


  void inicializar() {


    volarPresionado = false;
  }


  void actualizar() {

    if ( zl.getMovY()>0.3) {
      Paloma.setVelocity(-90, -320);
      spriteizquierda = true;
    }
    if (zl.getMovY()>0.5) {
      Paloma.setVelocity(-90, -350);
    }

    if (zl2.getMovY() > 0.3) {
      Paloma.setVelocity(50, -320);
      spritederecha = true;
    }
    if ( zl2.getMovY() > 0.5) {
      Paloma.setVelocity(60, -350);
    }
  }
  void sprites() {
    println(volarIzq, volarDer);
    println(spriteizquierda, spritederecha);

    if (zl2.getMovY() > 0.3) {
      volarDer++;
    }

    if (volarDer > 2) {
      volarDer = 0;
    }

    if (volarDer == 0 ) {
      Paloma.attachImage(pajaro[0]);
    }
    if (volarDer == 1 ) {
      Paloma.attachImage(pajaro[1]);
    }
    if (volarDer == 2 ) {
      Paloma.attachImage(pajaro[2]);
    }
    

    if (zl.getMovY() > 0.3) {
      volarIzq++;
    }

    if (volarIzq >= 4) {
      volarIzq = 0;
    }
    if (volarIzq > 0 && volarIzq < 2) {
      Paloma.attachImage(pajaro[3]);
    }
    if (volarIzq > 3 && volarIzq < 4) {
      Paloma.attachImage(pajaro[4]);
    }
  }
  void disparar( FWorld mundo ) {


    float vx = velocidad * cos( angulo );
    float vy = velocidad * sin( angulo );
    // println(vx, vy);
    Paloma.setVelocity( vx, vy );
    mundo.add( Paloma );
  }
}
