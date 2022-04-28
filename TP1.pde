GestorDeInteracion g;
Paleta paleta;
Circulos c[];
int cant = 5;
void setup () {
  size (800, 900);

  g = new GestorDeInteracion();
  paleta = new Paleta ("imagen.jpg");
  c = new Circulos[cant];
  for (int i=0; i<cant; i++) {
    c[i]=new Circulos();
  }
  background(255);
}
void draw () {
  println(g.movGrande);
  g.actualizar();
  g.moverMouse();
  for (int i=0; i<cant; i++) {
    c[i].dibujar();
  }
}
