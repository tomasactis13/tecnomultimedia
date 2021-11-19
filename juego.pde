class Juego {
  Lana l;
  Mano m;
  Ganar g;
  Perder p;
  Inicio i;
  Boton B; 
  int puntos;
  int vidas;
  PImage corazon;
  String estado;
  Lana [] lanas = new Lana[6];
  Juego() {
    l = new Lana("azul"); 
    m = new Mano();
    g = new Ganar();
    i = new Inicio();
    p = new Perder();
    B = new Boton();
    estado = "Inicio"; 
    for (int i=0; i<6; i++) {

      if (i==0 || i==1) {
        lanas[i] = new Lana("azul");
      }
      if (i==2 || i==3) {
        lanas[i] = new Lana("verde");
      }
      if (i==4 || i==5) {
        lanas[i] = new Lana("rojo");
      }
      //   println(lanas[i].nombrelana);
    }
    vidas = 5;
    corazon = loadImage("corazon.png");
    corazon.resize(40, 40);
  }
  void dibujarInicio() {
    background(0); 
    textSize(50);
    textAlign(CENTER);
    fill(255);
    text("Minijuego ", width/2, 150); 
    textSize(30);
    text("Consigue 30 lanas Rojas para Irene \n si tocas las otras lanas perderás 1 vida  \n usa las flechas para moverte", width/2, height/2);
    textSize(25);
    fill(255, 10, 10);
    text("Apreta una tecla para empezar ", width/2, 440);
  }
  void dibujarJuego() {
    println(estado);
    println(mouseX, mouseY);
    if (estado.equals("Inicio")) {
      i.dibujarInicio();
    }
    if (estado.equals("Ganar")) {
      g.dibujarGanar();
    }
    if (estado.equals("Perder")) {
      p.dibujarPerder();
    }  
    if (estado.equals("Juego")) {
      m.dibujarMano();      
      for (int i=0; i<6; i++) {
        lanas[i].dibujarLana();
        lanas[i].moverLana();
      }
    }
    fill(200);
    rect(0, 0, width, 70);
    fill(0);
    textSize(30);
    text(puntos, 80, 50);
    text(vidas, 200, 50);
    image(corazon, 150, 20);
    image(l.lanaImagen[3], 40, 22);
  }

  void moverJuego(int tecla) {
    m.moverMano(tecla);
  }

  void agarrarLana() {
    for (int i=0; i<6; i++) {
      float d = dist(lanas[i].lx, lanas[i].ly, m.xm, m.ym) ;
      if (d<lanas[i].ltam/2+m.mtam/2 && i==4 || d<lanas[i].ltam/2+m.mtam/2 && i==5) {
        lanas[i].ly = -100;
        puntos++;
      }
    }

    for (int e=0; e<6; e++) {
      float d2 = dist(lanas[e].lx, lanas[e].ly, m.xm, m.ym);
      if (d2<lanas[e].ltam/2+m.mtam/2 && e==0 || d2<lanas[e].ltam/2+m.mtam/2 && e==1 || d2<lanas[e].ltam/2+m.mtam/2 && e==2 || d2<lanas[e].ltam/2+m.mtam/2 && e==3 ) {
        lanas[e].ly = -100;
        vidas--;
      }//for2
    }//for1
  }//agarrar Lana
  void pantallas() {
    if (keyPressed) {
      estado = "Juego";
    }
    if (puntos == 30&& estado.equals("Juego")) {
      estado = "Ganar";
    }
    if (vidas == 0 && estado.equals("Juego")) {
      estado = "Perder";
    }
  }
  void reiniciar() {
    if (B.botonPressed(mouseX, mouseY, 270, 348, 260, 40 )&& estado.equals("Perder")) { 
      estado = "Juego";
            l.ly = -100;
      l.ltam = 30;
      l.lx = random(0, 600);
      l.lvel = random(5, 10);
      m.mtam = 50;
      m.xm = width/2;
      m.ym = 560;
      vidas = 5;
      puntos = 0;
      lanas [0].ly = -100;
      lanas [1].ly = -100;
      lanas [2].ly = -100;
    }
    if (B.botonPressed(mouseX, mouseY, 270, 348, 260, 40 )&& estado.equals("Ganar")) { 
      estado = "Juego";
            l.ly = -100;
      l.ltam = 30;
      l.lx = random(0, 600);
      l.lvel = random(5, 10);
      m.mtam = 50;
      m.xm = width/2;
      m.ym = 560;
      vidas = 5;
      puntos = 0;
      lanas [0].ly = -100;
      lanas [1].ly = -100;
      lanas [2].ly = -100;    
  

    }
  }
}//class
