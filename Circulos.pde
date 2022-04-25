 class Circulos{
   float x, y, t,c;
  float dir, vel;
 Circulos(){
    x= width/2;
    y=height/2;
    t=50;
    vel = 2;
   // dir = random(0, 360);

  if (g.movGrande) {
    crearGrandes();
  } else if (g.movPeque) {
    crearPeques();
  }
 }


void crearGrandes() {
  float t = random(150, 250);
  noStroke();
  // fill(random(200), random(200), random(20));
  fill(paleta.darColor());
  ellipse(200, 200, t, t);
}

void crearPeques() {
  float t = random(80, 120);
  stroke(5);
  if (mouseX<width/2.0) {
    //fill(random (0,250), random(0,250),random(0,250));
    fill(paleta.darColor());
    ellipse(200, 500, t, t);
  } else {
    //fill(random (0,250), random(0,250),random(0,250));
    fill(paleta.darColor());
    ellipse(200, 380, t, t);
  }
}
 void mover() {
    dir+=1;
    x = x+vel*cos(dir);
    y = y+vel*sin(dir);
  }
 }
