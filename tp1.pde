PImage Circulo[];
GestorDeInteracion g;
Circulos c;
PImage Fondo;
int cant = 13;
void setup () {

  size (900, 800);
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
  background(255);

  image(Fondo, width/2, height/2);
  g.mover();
  c.dibujar();
}
