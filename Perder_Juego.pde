class Perder {
  Botones B;
  Perder() {
    B = new Botones();
  }
  void dibujarPerder() {
    background(255); 
    textSize(30);
    textAlign(CENTER);
    text("Has fallado", width/2, height/2); 
    textSize(25);
    B.botonJuego(170, 348, 260, 40);
    fill(255);
    text("Volver a Intentar", width/2, 380);
  }
}
