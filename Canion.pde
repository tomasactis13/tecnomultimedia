class Canion {
  float anguloVel = 2;

  float x, y;

  float tiempoCan, palomacant;
  FCircle bala;


  Canion( float x_, float y_) {
    x=x_;
    y=y_;
    Catapulta = loadImage("Catapulta.png");
    Catapulta.resize(300, 150);
    pajaro0 = loadImage("pajaro0.png");
    pajaro0.resize(120, 120);
    palomacant = 0; 
    tiempoCan = 20;
  }

 /* void responderATeclasEstado() {
    if ( keyPressed ) {
      if ( keyCode == DOWN ) {
        angulo += radians(anguloVel);
      } else if ( keyCode == UP ) {
        angulo -= radians(anguloVel);
      }
      angulo = constrain( angulo, 
        radians(-90), radians(0) );
    }
  }*/
  void dibujarCatapulta() {
    image(Catapulta, -20, 570);
    if (estado == "Juego") {
      if (frameCount % 60 == 0) {
        tiempoCan = (tiempoCan-1) ;
      }
      if (palomacant > 1) {
        paloma = false;
      }
    }
    textFont(fuente);
    fill(255, 0, 0);
    textSize(50);
    text (tiempoCan, 200, 85);
  }

}