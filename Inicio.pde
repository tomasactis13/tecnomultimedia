class Inicio { 
  Inicio() {
  }
  void dibujarInicio() {
    background(0); 
    textSize(50);
    textAlign(CENTER);
    fill(255);
    text("Minijuego ", width/2, 150); 
    textSize(30);
    text("Consigue 30 lanas Rojas para Irene \n si tocas las otras lanas perderás 1 vida  \n usa las flechas para moverte", width/2, height/2);
     textSize(25);
     fill(255,10,10);
     text("Apreta una tecla para empezar ", width/2, 440);
  }
}
