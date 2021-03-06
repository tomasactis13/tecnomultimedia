import oscP5.*;
PImage Circulo[];
PImage Fondo[];
GestorDeInteracion g;
Circulos c;
Fondo_ f;
int cant = 19;
float amp, tono;
boolean  haySonido;
boolean monitor = false;

//variables de amortiguacion


float fa = 0.9;
float minimoAmp = 70;
float maximoAmp = 100;
float minimoPitch = 50;
float maximoPitch = 87;

//----------------------------------------------------------
OscP5 osc;
void setup () {

  size (900, 800);
  osc = new OscP5(this, 12345);
  imageMode(CENTER);
  g = new GestorDeInteracion();
  Circulo = new PImage[cant];
  f = new Fondo_();
  c = new Circulos();
  for (int i=0; i<cant; i++) {
    String nombre = "Circulo"+i+".png";
    Circulo[i]=loadImage(nombre);
  }
}

void draw () {
  background(190);
  f.dibujarFondo(); 
  g.mover();
  c.dibujar();


  //--------gestor de Señal----------

}
void oscEvent(OscMessage m) {
  if (m.addrPattern().equals("/amp")) {
    amp = m.get(0).floatValue();
    //println(amp);
  } else if (m.addrPattern().equals("/pitch")) {
    tono = m.get(0).floatValue();
  }
}
