class Perder { 
    int col1, col2, col3;
  Perder() {
    col1 = 0; 
    col2 = 0; 
    col3 = 0;
  }
  void dibujarPerder() {
    background(255); 
    textSize(40);
    textAlign(CENTER);
    text("Has fallado", width/2, height/2); 
    textSize(30);
    fill(col1, col2, col3);
    text("Volver a Intentar", width/2, 380);
    if (mouseX >= 280 && mouseX <= 520 && mouseY >= 358 && mouseY <= 380) {
      col1 = 255;
      col2 = 0;
      col3 = 0;
    } else {
      col1 = 0; 
      col2 = 0; 
      col3 = 0;
    }
  }
}
