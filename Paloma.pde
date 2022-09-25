class Paloma {
  float velocidad = 1000;
  float angulo = radians (-50);
  Boolean izqPresionado, derPresionado;
  Boolean volarPresionado;

  PImage pajaro0, pajaro4;
  Paloma() {
    pajaro0 = loadImage("pajaro0.png");
    pajaro0.resize(120, 120);
    pajaro4 = loadImage("pajaro4.png");
    pajaro4.resize(120, 120);
    Paloma = new FBox(50, 50);
    Paloma.setPosition(50, 650);
    Paloma.attachImage(pajaro0);
  }


  void inicializar() {

    izqPresionado = false;
    derPresionado = false;
    volarPresionado = false;
  }


  void actualizar() {
    if (izqPresionado == true) {
      Paloma.setVelocity(-90, Paloma.getVelocityY());
      J.direccion = "izq";
    }
    if (derPresionado == true) {
      Paloma.setVelocity(90, Paloma.getVelocityY());
      J.direccion = "der";
    }
    if (!izqPresionado && !derPresionado) {
      Paloma.setVelocity(0, Paloma.getVelocityY());
    }
    if (volarPresionado) {
      Paloma.setVelocity(Paloma.getVelocityX(), -320);
    }
    if (J.direccion == "der") {
      Paloma.attachImage(pajaro0);
    }
    if (J.direccion == "izq") { 
      Paloma.attachImage(pajaro4);
    }
  }
  void disparar( FWorld mundo ) {

    Paloma.setStatic(false);
    Paloma.setName( "paloma" );
    float vx = velocidad * cos( angulo );
    float vy = velocidad * sin( angulo );

    Paloma.setVelocity( vx, vy );


    mundo.add( Paloma );
  }
}
