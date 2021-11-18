class Ganar {
  Boton B;
  Ganar() {
     B = new Boton();
  }
  void dibujarGanar() {
    background(255); 
    textSize(40);
    textAlign(CENTER);
    fill(0);
    text("Has conseguido 30 lanas para Irene", width/2, height/2); 
    textSize(30);
     B.boton(270,348,260,40);
    fill(255);
    text("Volver a Intentar", width/2, 380); 
frameCount = 0;

  }
}
