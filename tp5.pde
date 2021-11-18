Juego j;
void setup() {
  size(800, 600);
  j = new Juego();
}
void draw() {
  background(0); 
  if (keyPressed) {
    j.moverJuego(keyCode);
  }
  j.dibujarJuego();
 j.agarrarLana();
 j.pantallas();
}
void mousePressed(){
  j.reiniciar();
}
