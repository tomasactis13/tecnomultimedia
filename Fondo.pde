class Fondo_ {
  PImage Fondo[] = new PImage[10];
  Fondo_() {
    for (int i=0; i<Fondo.length; i++) {
      Fondo[i] = loadImage("Fondo"+i+".png");
    }
  }
  void dibujarFondo() {
    if (haySonido == true && tono<55 && amp>92) {
      tint(random(0, 70), random(0, 255), random(200, 255));
    }
    if (tono>55 && tono<85 && amp>92) {
      tint(random(200, 255), random(0, 170), random(0, 80));
    }
    if (tono>85 && amp>minimoAmp) {
      noTint();
    }
    image(Fondo[9], width/2, height/2);
    image(Fondo[8], width/2, height/2);
    image(Fondo[5], width/2, height/2);
    image(Fondo[6], width/2, height/2);
    image(Fondo[7], width/2, height/2);
    image(Fondo[4], width/2, height/2);
    image(Fondo[3], width/2, height/2);
    image(Fondo[2], width/2, height/2);
    image(Fondo[0], width/2, height/2);
    image(Fondo[1], width/2, height/2);
  }
}
