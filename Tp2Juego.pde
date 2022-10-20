import fisica.*;
import processing.sound.*;
SoundFile Soundhalcon, musicFondo, Soundperder, SoundGanar, SoundD;

FWorld mundo;
Funciones F;
Juego J;

Paloma P;
Obstaculos O;
FBox [] nube = new FBox[7];
FBox  catapulta, nido, halcon, lombriz, nubelarga, poste1, poste2, arbol, poste1_, poste2_, poste3_, Paloma;
FBody body1, body2;
FMouseJoint cadena;

//Clases de la Captura Movimiento
Receptor receptor;
ZonaRemota zr;
Emisor emisor;
PuntoLocal pl;
ZonaLocal zl;

boolean Granizo = false;
boolean tope = false;
boolean choque = false;
PFont fuente;
String estado;

//Puerto entrada y Salida BFlow
int PUERTO_IN_OSC = 12345; // puerto de entrada
int PUERTO_OUT_OSC = 12346; // puerto de salida
String IP = "127.0.0.1"; // ip del BFlow 

float averageFlow_x;
float averageFlow_y;

float totalFlow_x;
float totalFlow_y;


void setup() {
  size(1200, 700);
  Fisica.init(this);
  estado = "Tutorial";
  Soundhalcon = new SoundFile(this, "eaglesound.mp3");
  musicFondo = new SoundFile(this, "musicafondo.mp3");
  Soundperder = new SoundFile(this, "perder.mp3");
  SoundGanar = new SoundFile(this, "ganar.mp3");
  fuente =   loadFont("Arial-BoldItalicMT-48.vlw");
  //birdSound = new SoundFile(this, "birdSound.mp3");
  SoundD = new SoundFile(this, "SonidoDaño.mp3");
  setupOSC(PUERTO_IN_OSC, PUERTO_OUT_OSC, IP);
  mundo = new FWorld();
  mundo.setEdges(color(0, 150, 255, 10));
  mundo.setGravity(50, 900);
  J = new Juego();
  F = new Funciones();
  P = new Paloma();
  O = new Obstaculos();
  P.inicializar();

  receptor = new Receptor();
  emisor = new Emisor();
 /* zl = new ZonaLocal(1, 100, 300, 100, 100);
  emisor.addZona(zl); 
  zl = new ZonaLocal(2, width-200, 300, 100, 100);
  emisor.addZona(zl);*/
  receptor.setPuntosLocales(emisor.puntosLocales);
  receptor.setZonasLocales(emisor.zonasLocales);
}

void draw() {
  println(averageFlow_y,P.volarDer);
 
  
  if (estado == "Tutorial") {
    image(J.Tutorial, 0, 0);
  }
  if (estado == "ganar") {
    F.ganar();
  }

  if (estado == "Juego") {
    P.actualizar();
    J.dibujarJuego();
    mundo.step();
    mundo.draw();
    O.halcon();
  }
  receptor.actualizar(mensajes);  
  receptor.dibujarZonasRemotas(width, height);
  
  emisor.actualizar();
  emisor.dibujar();
}
void mousePressed() {
  // J.reiniciar();
}



void keyPressed() {
 
  if (estado == "Tutorial" && key == ' ') {
    estado = "Juego";
  }
  //if (key == 'a') {
  //  P.izqPresionado = true;
  //}
  //if (key == 'd') {
  //  P.derPresionado = true;
  //}
  if (key == 'w') {
    P.volarPresionado = true;
  }
}


void keyReleased() {
  //if (key == 'a') {
  //  P.izqPresionado = false;
  //}
  //if (key == 'd') {
  //  P.derPresionado = false;
  //}
  if (key == 'w') {
    P.volarPresionado = false;
  }
}
