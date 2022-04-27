
 class Circulos{
   float x, y, t,c;
  float dir, vel;
 Circulos(){
    x= width/2.0;
    y=height/2.0; 
    vel=2;
    dir=30;
 }


void crearGrandes() {
  float t = random(150, 250);
  noStroke();
  fill(paleta.darColor());
  ellipse(200, 200, t, t);
}

void crearPeques() {
  float t = random(80, 120);
  noStroke();
  if (mouseX<width/2) {
    fill(paleta.darColor());
    ellipse(x, y, t, t);
  } else {
    fill(paleta.darColor());
    ellipse(x, y, t, t);
  }
}
 void moverMouse() {
    if (g.movGrande) {
    crearGrandes();
  } 
  if (g.movPeque) {
    crearPeques();
  }
     dir=30;
    x = x+vel*cos(dir);
    y = y+vel*sin(dir);
  }
 
 }
