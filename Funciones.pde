class Funciones {
  int  s;
  PImage fganar, fperder;
  PFont fuente;
  boolean sonido, tope;
  String estado = "Juego";
  //Clases
  Boton B;
  Juego J;

  Funciones() {
    B = new Boton();
    s = 60;
    fuente =   loadFont("Arial-BoldItalicMT-48.vlw");
    fganar = loadImage("fganar.png");
    fganar.resize(1200, 700);
    fperder = loadImage("fperder.png");
    fperder.resize(1200, 700);
    sonido = true;
    tope = false;
  }
}
