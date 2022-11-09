class Juego {
  PImage Fondo, Tutorial, FondoGranizo;
  boolean paloma = true;
  int lombrices;
  String direccion;
  int g; 
  Boton B;
  Canion C;
  Paloma P;
  Funciones F;

  Obstaculos O;
  Juego() {
    lombrices = 0;
    B = new Boton();
    C = new Canion(50, height-80);
    P = new Paloma();
    F = new Funciones();
    O = new Obstaculos();
    Fondo = loadImage("Fondo.png");
    Fondo.resize(width, height);
    FondoGranizo = loadImage("FondoGranizo.png");
    FondoGranizo.resize(width, height);
    Tutorial = loadImage("Tutorial.png");
    Tutorial.resize(width, height);
    g = 0;
    O.dibujarObs();
  }


  void dibujarJuego() {
    image(Fondo, 0, 0);
    //image (O.Arbolizq, -50, 100);
    C.dibujarCanion();
    //P.inicializar();
    //P.actualizar(); 
    F.avanzar();
    F.contador();
    F.borrarGranizo();
    P.sprites();
    // println(g, Granizo);
    if (C.tiempoCan == 0 && paloma == true) {
      P.disparar(mundo);
      paloma = false;
    }
    if (Granizo == true) {
      image(FondoGranizo, 0, 0);
      O.granizo();
      if (frameCount % 60 == 0) {
        g = (g+1) ;
      }
      if ( g == 10) {
        Granizo = false;
        g = 0;
      }
     
    }
    //if (estado == "ganar") {  
    //  F.ganar();
    //}
  }
  /*  void reiniciar() {
   if (B.botonPressed(mouseX, mouseY, 75, 325, 270, 50)&& F.estado.equals("perder")) { 
   F.estado = "Juego";
   F.sonido = true;
   lombrices = 0;
   
   mundo.add(lombriz);
   mundo.add(Paloma);
   lombriz.setPosition(1100, 500);
   
   Paloma.setPosition(50, 250);
   halcon.setPosition(1200, random(40, 200));
   F.s = 60;
   musicFondo.play();
   musicFondo.amp(0.1);
   }
   if (B.botonPressed(mouseX, mouseY, 75, 325, 270, 50)&& F.estado.equals("ganar")) { 
   F.estado = "Juego";
   F.sonido = true;
   
   lombrices = 0;
   
   mundo.add(lombriz);
   mundo.add(Paloma);
   lombriz.setPosition(1100, 500);
   
   Paloma.setPosition(50, 250);
   halcon.setPosition(1200, random(40, 200));
   F.s = 60;
   musicFondo.play();
   musicFondo.amp(0.1);
   }
   }*/
}
