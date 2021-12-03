class Ganar {
  Botones B;
  Ganar() {
     B = new Botones();
  }
  void dibujarGanar() {
    background(255); 
    textSize(30);
    textAlign(CENTER);
    fill(0,150,20);
    text("¡Felicidades! \n Has conseguido 30 lanas para Irene", width/2, height/2); 
    textSize(25);
     B.botonJuego(170,348,260,40);
    fill(255);
    text("Volver a casa", width/2, 380); 
frameCount = 0;

  }
}
