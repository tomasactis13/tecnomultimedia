import fisica.*;
FWorld mundo;
int vidas, lombrices;
Juego J;
Obstaculos O;

FBox  nido, halcon, lombriz, lombriz2, lombriz3, poste1, poste2,poste3, arbol;
FBody body1, body2;

float y = 1000;
float vx = -200;
float vy = -15;
PImage Nido, Lombriz, Lombriz2, Lombriz3, Poste, Halcon,Halconb, Fondo, Arbol,pajaro0,pajaro0b,pajaro1,pajaro2,pajaro3;
PImage [] pajaro = new PImage[4];
String estado,direccion;

Paloma p;


void setup() {
  size(1200, 700);
  Fisica.init(this);
  J = new Juego();
  O = new Obstaculos();
  p = new Paloma();

  mundo = new FWorld();
  mundo.setEdges(color(0, 150, 255, 10));
  mundo.setGravity(0, y);
  estado = "Juego";
  direccion = "null";
  Fondo = loadImage("Fondo.png");
  Fondo.resize(width, height);
  O.dibujarObs();//*NUEVO

  p.dibujarP();
  p.inicializar(40, height * 0.75);
}

void draw() {
  halcon.setVelocity(vx, vy);
  println(lombrices);
  image(Fondo, 0, 0);

  fill(160, 30);
  rect(0, 0, width, height);

  p.actualizar();


  mundo.step();
  mundo.draw();
  J.mostrarvidas();
  J.perder();
  J.ganar();
}

void mousePressed() {
  J.reiniciar();
}

void keyPressed () {
  if (key == 'a') {
    p.izqPresionado = true;
  }
  if (key == 'd') {
    p.derPresionado = true;
  }

  if (key == 'w') {
    p.volarPresionado = true;
  }
}


void keyReleased() {
  if (key == 'a') {
    p.izqPresionado = false;
  }
  if (key == 'd') {
    p.derPresionado = false;
  }
  if (key == 'w') {
    p.volarPresionado =false;
  }
}
