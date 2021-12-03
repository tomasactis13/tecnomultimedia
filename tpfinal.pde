import processing.sound.*;
SoundFile terror, terror2, Spuntos, Sperder, error, Sganar;
Aventura A;
void setup() {
  size(600, 500);
  A = new Aventura();
  terror = new SoundFile(this, "terror.mp3");
  terror2 = new SoundFile(this, "terror2.mp3");
  Spuntos = new SoundFile(this, "puntos.mp3");
  Sperder = new SoundFile(this, "perder.mp3");
  error = new SoundFile(this, "error.mp3");
  Sganar = new SoundFile(this, "ganar.mp3");
}

void draw() {
  background(0);
  A.dibujarAventura();
}
void mousePressed() {
  A.botonApretado();
  A.reinicioJuego();
}
