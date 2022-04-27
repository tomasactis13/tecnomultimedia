
class Circulos {
  float x, y, x2, y2, c;
  float dir, vel;
  Circulos() {
    x=random (width);
    y=random(height); 
    x2=random (width);
    y2=random(height);
  }
  void crearGrandes() {
    pushStyle();
    float t = random(150, 250);
    noStroke();
    fill(paleta.darColor());
    ellipse(x2, y2, t, t);
    popStyle();
  }

  void crearPeques() {
    pushStyle();
    float t = random(80, 120);
    noStroke();
    if (mouseX<width/2) {
      fill(paleta.darColor());
      ellipse(x, y, t, t);
    } else {
      fill(paleta.darColor());
      ellipse(x, y, t, t);
      popStyle();
    }
  }
  void dibujar() {
    
    if (g.movGrande) {
      crearGrandes();
    } 
    if (g.movPeque) {
      crearPeques();
    }
  }
}
