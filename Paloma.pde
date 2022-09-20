class Paloma {
  float velocidad = 600;
  float angulo = radians (-50);
  Boolean izqPresionado, derPresionado;
  Boolean volarPresionado;
  float vx = -200;
  float vx_ = 200;
  float vy = -15;


  Paloma() {
    Paloma = new FBox(50, 50);
    Paloma.setPosition(50, 650);
    Paloma.attachImage(pajaro0);
    pajaro4 = loadImage("pajaro4.png");
    pajaro4.resize(120, 120);
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
