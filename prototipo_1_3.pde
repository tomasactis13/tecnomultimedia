import fisica.*;
import processing.sound.*;
SoundFile Soundhalcon, musicFondo, Soundperder, SoundGanar, SoundD;

FWorld mundo;

Juego J;
Paloma P;
Obstaculos O;
Canion C;

FBox  catapulta, nido, halcon, lombriz, lombriz2, lombriz3, poste1, poste2, poste3, arbol, poste1_, poste2_, poste3_, Paloma;
FBody body1, body2;
boolean paloma = true;
boolean tope = false;
boolean sonido = true;
int vidas, lombrices, frameVolar;
float y = 1000;

PImage Nido, Lombriz, Lombriz2, Lombriz3, Poste, Halcon, Halconb, Fondo, Arbol, Catapulta, 
  pajaro0, pajaro4, pajaro1, pajaro2, pajaro3, fganar, fperder;
PFont fuente;
String estado, direccion;




void setup() {
  size(1200, 700);
  Fisica.init(this);

  Soundhalcon = new SoundFile(this, "eaglesound.mp3");
  musicFondo = new SoundFile(this, "musicafondo.mp3");
  Soundperder = new SoundFile(this, "perder.mp3");
  SoundGanar = new SoundFile(this, "ganar.mp3");
  fuente =   loadFont("Arial-BoldItalicMT-48.vlw");
  //birdSound = new SoundFile(this, "birdSound.mp3");
  SoundD = new SoundFile(this, "SonidoDaño.mp3");

  mundo = new FWorld();
  mundo.setEdges(color(0, 150, 255, 10));
  mundo.setGravity(0, y);
  J = new Juego();
  O = new Obstaculos();
  P = new Paloma();
  C = new Canion(50, height-80);
  estado = "Juego";
  direccion = "null";

  musicFondo.play();
  musicFondo.amp(0.1);

  O.dibujarObs();
}

void draw() {
  println(lombrices);
  //C.responderATeclasEstado();

  fill(160, 30);
  rect(0, 0, width, height);
  J.mostrarJuego();
  C.dibujarCatapulta();
 // halcon();
  mundo.step();
  mundo.draw();
  // J.perder();
  J.ganar();
  J.contador();
  if (C.tiempoCan == 19 && paloma == true) {
    P.disparar(mundo);
    paloma = false;
  }
}
void mousePressed() {
  J.reiniciar();
}

void keyPressed () {
  if (key == 'a') {
    P.izqPresionado = true;
  }
  if (key == 'd') {
    P.derPresionado = true;
  }

  if (key == 'w') {
    P.volarPresionado = true;
  }
}



void keyReleased() {
  if (key == 'a') {
    P.izqPresionado = false;
  }
  if (key == 'd') {
    P.derPresionado = false;
  }
  if (key == 'w') {
    P.volarPresionado =false;
  }
}
