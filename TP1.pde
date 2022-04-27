GestorDeInteracion g;
Paleta paleta;
Circulos c;
void setup () {
  size (800, 900);
 // background(255);
  g = new GestorDeInteracion();
  c = new Circulos();
  paleta = new Paleta ("imagen.jpg");

}

void draw () {
    println(g.movGrande);
  g.actualizar();
c.moverMouse();

}
