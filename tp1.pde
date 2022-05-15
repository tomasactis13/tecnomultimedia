import oscP5.*;
PGraphics f;
PImage Circulo[];
GestorDeInteracion g;
Circulos c;
Paleta p;
PImage Fondo;
int cant = 13;
boolean seMueve = false;
OscP5 osc;
void setup () {

  size (900, 800);
  f = createGraphics(width, height);
  Fondo = loadImage("Fondo1.jpg");
  imageMode(CENTER);
  g = new GestorDeInteracion();
  Circulo = new PImage[cant];
  c = new Circulos();
  for (int i=0; i<cant; i++) {
    String nombre = "Circulo"+i+".png";
    Circulo[i]=loadImage(nombre);
  }
}

void draw () {
  c.Fondo();
  g.mover();
  c.dibujar();
}
