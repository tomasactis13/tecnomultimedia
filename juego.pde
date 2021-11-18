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
    l = new Lana(); 
    m = new Mano();
    g = new Ganar();
    i = new Inicio();
    p = new Perder();
    B = new Boton();
    estado = "Inicio"; 
    for (int i=0; i<lanas.length; i++) {
      lanas[i] = new Lana();
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
      l.dibujarLana();
      l.moverLana();
      for (int i=0; i<l.cant; i++) {
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
    image(l.lana[3], 40, 22);
  }

  /*      for (int i2=0; i2<lanas.length; i2++) {
   lanas[i2].dibujarLana();
   lanas[i2].moverLana();
   }
   for (int i3=0; i3<lanas.length; i3++) {
   lanas[i3].dibujarLana();
   lanas[i3].moverLana();
   }*/

  void moverJuego(int tecla) {
    m.moverMano(tecla);
  }

  void agarrarLana() {
    float d = dist(l.lx, l.ly, m.xm, m.ym);
    if (d<l.ltam/2+m.mtam/2) {
      l.ly = -100;
    }
    /* float d1 = dist(l.lx2, l.ly2, m.xm, m.ym);
     if (d1<l.ltam/2+m.mtam/2) {
     l.ly2 = -100;
     }
     float d2 = dist(l.lx3, l.ly3, m.xm, m.ym);
     if (d2<l.ltam/2+m.mtam/2) {
     l.ly3 = -100;
     }*/
    for (int i=0; i<lanas.length; i++) {
      float d3 = dist(lanas[i].lx, lanas[i].ly, m.xm, m.ym);
      if (d3<lanas[i].ltam/2+m.mtam/2) {
        lanas[i].ly = -100;
        vidas--;
      }
    }
     for (int i3=0; i3<lanas.length; i3++) {
     float d5 = dist(lanas[i3].lx3, lanas[i3].ly, m.xm, m.ym);
     if (d5<lanas[i3].ltam/2+m.mtam/2) {
     lanas[i3].ly = -100;
     puntos++;
     }//for2
     }//for1*/
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
    if (B.botonPressed(mouseX, mouseY, 270,348,260,40 )&& estado.equals("Perder")) { 
      estado = "Juego";
    }
    if (B.botonPressed(mouseX, mouseY, 270,348,260,40 )&& estado.equals("Ganar")) { 
      estado = "Juego";
    }    
    l.ly = -100;
    //l.ly2 = -100;
    // l.ly3 = -100;
    l.ltam = 30;
    l.lx = random(0, 600);
    //l.lx2 = random(0, 600);
    //l.lx3 = random(0, 600);
    l.lvel = random(0.5, 2);
    //l.lvel2 = random(0.5, 2);
    //l.lvel3  = random(0.5, 2); 
    m.mtam = 50;
    m.xm = width/2;
    m.ym = 560;
    vidas = 5;
    puntos = 0;
    lanas [0].ly = -100;
    lanas [1].ly = -100;
    lanas [2].ly = -100;
    /* lanas [0].ly2 = -100;
     lanas [1].ly2 = -100;
     lanas [2].ly2 = -100;
     lanas [0].ly3 = -100;
     lanas [1].ly3 = -100;
     lanas [2].ly3 = -100;*/
  }
}//class
