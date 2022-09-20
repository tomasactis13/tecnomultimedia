class Juego {
  int m, s;
  PImage corazon;
  Boton B;
  Canion C;
  Paloma P;
  Juego() {
    vidas = 6;
    lombrices = 0;
    B = new Boton();
    C = new Canion(50, height-80);
    P = new Paloma();
    s = 0;
    Fondo = loadImage("Fondo.png");
    Fondo.resize(width, height);
    fganar = loadImage("fganar.png");
    fganar.resize(1200, 700);
    fperder = loadImage("fperder.png");
    fperder.resize(1200, 700);
  }
  void mostrarJuego() {   
    P.inicializar(40, height * 0.75);
    P.actualizar();
    image(Fondo, 0, 0);
  }
  void contador() {
    if (estado == "Juego") {
      if (frameCount % 60 == 0) {
        s = (s+1) ;
      }
      textFont(fuente);
      fill(0);
      textSize(50);
      text (s, 290, 85);
    }
  }
  /* void mostrarvidas() {
   corazon = loadImage("corazon.png");
   corazon.resize(50, 50);
   if (vidas >= 1) {
   image(corazon, 40, 40);
   }
   if (vidas >= 4) {
   image(corazon, 100, 40);
   }
   if (vidas >= 6) {
   image(corazon, 160, 40);
   }
   }
   void perdervida() {
   vidas-=1;
   }*/





  void perder() {
    if (vidas < 1 || s == 0) {
      estado = "perder";
      if (estado=="perder") {        
        image(fperder, 0, 0);           
        textSize(30);
        B.boton(75, 325, 270, 50);
        fill(255);
        text("Volver a Intentar", 87, 363);
        if (sonido == true) {
          Soundperder.play();
          Soundperder.amp(0.3);
          sonido = false;
        }
        Soundhalcon.stop();
        musicFondo.stop();
      }
    }
  }
  void ganar() {

    if (estado == "ganar") {  
      image(fganar, 0, 0);         
      textSize(30);
      B.boton(75, 325, 270, 50);
      fill(255);
      text("Volver a Intentar", 87, 363);
      frameCount = 0;
      if (sonido == true) {
        SoundGanar.play();
        SoundGanar.amp(0.3);
        sonido = false;
      }
      musicFondo.stop();
      Soundhalcon.stop();
    }
  }
  void reiniciar() {
    if (B.botonPressed(mouseX, mouseY, 75, 325, 270, 50)&& estado.equals("perder")) { 
      estado = "Juego";
      sonido = true;
      vidas = 6;
      lombrices = 0;
      mundo.add(lombriz3);
      mundo.add(lombriz2);
      mundo.add(lombriz);
      mundo.add(Paloma);
      lombriz.setPosition(1100, 500);
      lombriz2.setPosition(600, 500);
      lombriz3.setPosition(300, 600);
      Paloma.setPosition(50, 250);
      halcon.setPosition(1200, random(40, 200));
      s = 60;
      musicFondo.play();
      musicFondo.amp(0.1);
    }
    if (B.botonPressed(mouseX, mouseY, 75, 325, 270, 50)&& estado.equals("ganar")) { 
      estado = "Juego";
      sonido = true;
      vidas = 6;
      lombrices = 0;
      mundo.add(lombriz3);
      mundo.add(lombriz2);
      mundo.add(lombriz);
      mundo.add(Paloma);
      lombriz.setPosition(1100, 500);
      lombriz2.setPosition(600, 500);
      lombriz3.setPosition(300, 600);
      Paloma.setPosition(50, 250);
      halcon.setPosition(1200, random(40, 200));
      s = 60;
      musicFondo.play();
      musicFondo.amp(0.1);
    }
  }
}
