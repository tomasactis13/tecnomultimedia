import oscP5.*;
PImage Circulo[];
GestorDeInteracion g;
Circulos c;
PImage Fondo;
int cant = 19;
float amp, tono;
boolean seMueve, Cirpeq,haySonido,intensidad;
boolean monitor = false;

//variables de amortiguacion

GestorSenial gestorAmp;
GestorSenial gestorPitch;

float f = 0.9;
float minimoAmp = 70;
float maximoAmp = 100;
float minimoPitch = 50;
float maximoPitch = 87;

//----------------------------------------------------------
OscP5 osc;
void setup () {

  size (900, 800);
  gestorAmp = new GestorSenial(minimoAmp, maximoAmp, f);
  gestorPitch = new GestorSenial(minimoPitch, maximoPitch, f);
  osc = new OscP5(this, 12345);
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

 
  //--------gestor de Señal----------

  gestorAmp.actualizar(amp);
  gestorPitch.actualizar(amp);
  if (monitor) {
    gestorAmp.imprimir(200, 200);
    gestorPitch.imprimir(200, 400);
  }
  float tam = 60;
  float posX = map(gestorAmp.filtradoNorm(), 0, 1, 0, width);
  float posY = height-40;
  ellipse(posX, posY, tam, tam);
}

void oscEvent(OscMessage m) {
  if (m.addrPattern().equals("/amp")) {
    amp = m.get(0).floatValue();
    //println(amp);
  }
 else if (m.addrPattern().equals("/pitch")){
   tono = m.get(0).floatValue();
 }
}
