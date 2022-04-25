GestorDeInteracion g;
Paleta paleta;
Circulos c;
void setup () {
  size (600, 600);
 // background(255);
  g = new GestorDeInteracion();
  c = new Circulos();
  paleta = new Paleta ("imagen.jpg");
}

void draw () {
  g.actualizar();
c.mover();
c.crearGrandes();
c.crearPeques();
}
