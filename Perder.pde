class Perder {
  Boton B;
  Perder() {
    B = new Boton();
  }
  void dibujarPerder() {
    background(255); 
    textSize(40);
    textAlign(CENTER);
    text("Has fallado", width/2, height/2); 
    textSize(30);
     B.boton(270,348,260,40);
    fill(255);
    text("Volver a Intentar", width/2, 380); 
  }
}
