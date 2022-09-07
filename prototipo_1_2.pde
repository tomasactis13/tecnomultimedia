import fisica.*;
FWorld mundo;
int vidas, lombrices;
Juego J;
Obstaculos O;

FBox  nido, halcon,lombriz,lombriz2,lombriz3,poste1,poste2;
FBody body1, body2;

float x = random(20, 80);
float y = random(200, 280);
float vx = -100;
float vy = 0;
PImage Nido, Lombriz,Lombriz2,Lombriz3,Poste,Halcon;

String estado;
void setup() {
  size(1200, 700);
  Fisica.init(this);
  J = new Juego();
  O = new Obstaculos();
  mundo = new FWorld();
  mundo.setEdges(color(0, 150, 255, 100));
  mundo.setGravity(x, y);
  estado = "Juego";

  O.dibujarObs();//*NUEVO
}

void draw() {
  halcon.setVelocity(vx, vy);


  fill(0, 150, 255, 100);
  rect(0, 0, width, height);

  fill(138, 222, 72);
  rect(0, height-20, width, 50);




  mundo.step();
  mundo.draw();
  J.mostrarvidas();
  J.perder();
  J.ganar();
}

void mousePressed() {
  J.reiniciar();
}
