class Juego {
  PImage Fondo;
  boolean paloma = true;
  int lombrices;
  String direccion;
  Boton B;
  Canion C;
  Paloma P;
  Anda A;
  Obstaculos O;
  Juego() {
    direccion = "null";
    lombrices = 0;
    B = new Boton();
    C = new Canion(50, height-80);
    P = new Paloma();
    A = new Anda();
    O = new Obstaculos();
    Fondo = loadImage("Fondo.png");
    Fondo.resize(width, height);
  }
  void dibujarJuego() { 
    image(Fondo, 0, 0);   
    P.inicializar();
    P.actualizar(); 
    C.dibujarCatapulta();
    //F.ganar();
    A.contador();
    if (C.tiempoCan == 17 && paloma == true) {
      P.disparar(mundo);
      paloma = false;
    }
    if (Granizo == true) {
      O.granizo();
    }
    A.borrarGranizo();
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
  void reiniciar() {
    if (B.botonPressed(mouseX, mouseY, 75, 325, 270, 50)&& A.estado.equals("perder")) { 
      // F.estado = "Juego";
      //F.sonido = true;
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
      // F.s = 60;
      musicFondo.play();
      musicFondo.amp(0.1);
    }
    if (B.botonPressed(mouseX, mouseY, 75, 325, 270, 50)&& A.estado.equals("ganar")) { 
      A.estado = "Juego";
      A.sonido = true;

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
      //F.s = 60;
      musicFondo.play();
      musicFondo.amp(0.1);
    }
  }
}
