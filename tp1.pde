/* ---TRABAJO PRACTICO N1---*/
/* Assirio, Juan Pablo / Actis, Tomás / Romero, Ramiro */
//Comision Lisandro



PImage Circulo[];
GestorDeInteracion g;
Circulos c;
int cant = 17;
void setup () {

  size (900, 800);
  imageMode(CENTER);
  g = new GestorDeInteracion();
  Circulo = new PImage[cant];
  //c = new Circulos();
  for (int i=0; i<cant; i++) {
    String nombre = "Circulo"+i+".png";
    Circulo[i]=loadImage(nombre);
    frameCount = 0;
  }
}

void draw () {
  background(255);
  g.mover();
  //g.moverMouse();
  //c.dibujar();
  Circulo[0].resize(400, 400);
  image(Circulo[0], g.xint, height/2);
  Circulo[1].resize(400, 400);
  image(Circulo[1], g.x_int, height/2);
  println(frameCount);
}
