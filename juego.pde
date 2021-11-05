class Juego {
  Lana l;
  Mano m;
  Ganar g;
  Perder p;
  Inicio i;
  int puntos;
  int vidas;
  PImage corazon;
  String pantalla;
  Lana [] lanas = new Lana[6];
  Juego() {
    l = new Lana(); 
    m = new Mano();
    g = new Ganar();
    i = new Inicio();
    p = new Perder();
    pantalla = "Inicio"; 

    for (int i=0; i<lanas.length; i++) {
      lanas[i] = new Lana();
    }
    vidas = 5;
    corazon = loadImage("corazon.png");
    corazon.resize(40, 40);
  }

  void moverJuego(int tecla) {
    m.moverMano(tecla);
  }
  void dibujarJuego() {
    println(pantalla);
    println(mouseX, mouseY);
    if (pantalla.equals("Inicio")) {
      i.dibujarInicio();
    }
    if (pantalla.equals("Ganar")) {
      g.dibujarGanar();
    }
    if (pantalla.equals("Perder")) {
      p.dibujarPerder();
    }  
    if (pantalla.equals("Juego")) {
      m.dibujarMano();
      l.dibujarLana();
      l.moverLana();
      for (int i=0; i<lanas.length; i++) {
        lanas[i].dibujarLana();
        lanas[i].moverLana();
      }

      for (int i2=0; i2<lanas.length; i2++) {
        lanas[i2].dibujarLana();
        lanas[i2].moverLana();
      }
      for (int i3=0; i3<lanas.length; i3++) {
        lanas[i3].dibujarLana();
        lanas[i3].moverLana();
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
  }

  void agarrarLana() {
    float d = dist(l.lx, l.ly, m.xm, m.ym);
    if (d<l.ltam/2+m.mtam/2) {
      l.ly = -100;
    }
    float d1 = dist(l.lx2, l.ly2, m.xm, m.ym);
    if (d1<l.ltam/2+m.mtam/2) {
      l.ly2 = -100;
    }
    float d2 = dist(l.lx3, l.ly3, m.xm, m.ym);
    if (d2<l.ltam/2+m.mtam/2) {
      l.ly3 = -100;
    }
    for (int i=0; i<lanas.length; i++) {
      float d3 = dist(lanas[i].lx, lanas[i].ly, m.xm, m.ym);
      if (d3<lanas[i].ltam/2+m.mtam/2) {
        lanas[i].ly = -100;
        vidas--;
      }
      for (int i2=0; i2<lanas.length; i2++) {
        float d4 = dist(lanas[i2].lx2, lanas[i2].ly2, m.xm, m.ym);
        if (d4<lanas[i2].ltam/2+m.mtam/2) {
          lanas[i2].ly2 = -100;
          vidas--;
        }
        for (int i3=0; i3<lanas.length; i3++) {
          float d5 = dist(lanas[i3].lx3, lanas[i3].ly3, m.xm, m.ym);
          if (d5<lanas[i3].ltam/2+m.mtam/2) {
            lanas[i3].ly3 = -100;
            puntos++;
          }//if d5
        }//for3
      }//for2
    }//for1
  }//agarrar Lana
  void pantallas() {
    if (keyPressed) {
      pantalla = "Juego";
    }
    if (puntos == 30&& pantalla.equals("Juego")) {
      pantalla = "Ganar";
    }
    if (vidas == 0 && pantalla.equals("Juego")) {
      pantalla = "Perder";
    }
  }
  void reiniciar() {
    if (mousePressed) {
      if (mouseX >= 280 && mouseX <= 520 && mouseY >= 358 && mouseY <= 380 && pantalla.equals("Perder") || mouseX >= 280 && mouseX <= 520 && mouseY >= 358 && mouseY <= 380 && pantalla.equals("Ganar")) {
        pantalla = "Juego"; 
        l.ly = -100;
        l.ly2 = -100;
        l.ly3 = -100;
        l.ltam = 30;
        l.lx = random(0, 600);
        l.lx2 = random(0, 600);
        l.lx3 = random(0, 600);
        l.lvel = random(0.5, 2);
        l.lvel2 = random(0.5, 2);
        l.lvel3  = random(0.5, 2); 
        m.mtam = 50;
        m.xm = width/2;
        m.ym = 560;
        vidas = 5;
        puntos = 0;
        lanas [0].ly = -100;
        lanas [1].ly = -100;
        lanas [2].ly = -100;
        lanas [0].ly2 = -100;
        lanas [1].ly2 = -100;
        lanas [2].ly2 = -100;
        lanas [0].ly3 = -100;
        lanas [1].ly3 = -100;
        lanas [2].ly3 = -100;
      }
    }
  }
}//class
