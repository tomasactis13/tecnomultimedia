
class Pantallas {
  PImage [] foto = new PImage[22];
  PImage [] fotos = new PImage[9];
  PImage intrusos;
  String [] texto;
  int lineas;
  Botones B;
  Pantallas() {
    B = new Botones();
    texto = loadStrings("texto.txt");
    for (int s=0; s<fotos.length; s++) {
      fotos[s] = loadImage("fotos"+s+".png"); 
      fotos[s].resize(850, 500);
      for (int f=0; f<foto.length; f++) {
        foto[f] = loadImage("foto"+f+".png"); 
        foto[f].resize(1000, 540);
      }
      intrusos = loadImage("intrusos.jpg");
      intrusos.resize(850, 500);
    }
  }
  void Introduccion() {
    textAlign(CENTER);
    if (A.estado.equals("Introduccion")) {
      if (frameCount > 0 && frameCount <340) {
        textFont(A.fuente1, 35);
        float rojo = map(frameCount, 0, 160, 0, 255); 
        float verde = map(frameCount, 0, 160, 0, 10);
        float azul = map(frameCount, 0, 160, 0, 10);
        fill(rojo, verde, azul); 
        text("CASA TOMADA", width/2, height/2);
      }
      if (frameCount > 339 && frameCount <1500 ) { 
        textSize(15);
        float blanco = map(frameCount, 340, 800, 0, 255); 
        fill(blanco); 
        text(texto[lineas], width/2, 200);  
        float blanco1 = map(frameCount, 350, 820, 0, 255); 
        fill(blanco1);
        text(texto[lineas+1], width/2, 230); 
        float blanco2 = map(frameCount, 360, 840, 0, 255); 
        fill(blanco2);
        text(texto[lineas+2], width/2, 260); 
        float blanco3 = map(frameCount, 370, 860, 0, 255); 
        fill(blanco3);
        text(texto[lineas+3], width/2, 290);
        float blanco4 = map(frameCount, 380, 880, 0, 255); 
        fill(blanco4);
        text(texto[lineas+4], width/2, 320);
        float blanco5 = map(frameCount, 390, 900, 0, 255); 
        fill(blanco5);
        text(texto[lineas+5], width/2, 350);
      }
      if (frameCount > 1540 && frameCount <1780 ) { 
        float blanco = map(frameCount, 1540, 1740, 0, 255); 
        fill(blanco); 
        textSize(22);
        text(texto[lineas+6], width/2, height/2);
      }
    }//Introduccion
    if (frameCount > 1800 && A.estado.equals("Introduccion")) { 
      image(foto[0], 0, 0);
      textAlign(CENTER); 
      B.boton(250, 240, 100, 40);
      fill(255);
      textSize(25);
      text("Abrir", 300, 270);
    }
  } 
  void Introduccion2() { 
    if (frameCount >= 0 && frameCount < 80) {
      image(foto[1], 0, 0);
    } 
    if (frameCount > 0 && frameCount < 120) {
      image(foto[2], 0, 0);
    }
    if (frameCount > 119 && frameCount < 240) {
      image(foto[3], 0, 0);
    }
    if (frameCount > 239 && frameCount < 480) {
      image(foto[4], 0, 0);
    }
    if (frameCount > 479 && frameCount < 600) {
      image(foto[5], 0, 0);
    }
    if (frameCount > 599 && frameCount < 720) {
      image(foto[6], 0, 0);
    }
    if (frameCount > 719 && frameCount < 1400) {
      image(foto[7], 0, 0);
      textSize(15); 
      textAlign(CENTER); 
      fill(255);
      text(texto[lineas+7], width/2, 50);
      text(texto[lineas+8], width/2, 65);
      text(texto[lineas+9], width/2, 80);
      text(texto[lineas+10], width/2, 95);
    }
    if (frameCount > 1399 && frameCount < 1900) {
      image(foto[8], 0, 0); 
      textSize(16); 
      textAlign(CENTER);
      text(texto[lineas+11], width/2, 385);
      text(texto[lineas+12], width/2, 400);
      text(texto[lineas+13], width/2, 415);
      text(texto[lineas+14], width/2, 430);
      text(texto[lineas+15], width/2, 445);
    }
    if (frameCount > 1900) {
      A.estado = "Desarrollo";
    }
  } 

  void Desarrollo() {
    if (frameCount > 0);
    {
      image(foto[9], 0, 0); 
      B.boton(470, 430, 100, 40);
      B.boton(30, 430, 100, 40);
      fill(255);
      textSize(22);
      textAlign(CENTER); 
      text("Limpiar", 520, 460);
      text("No Limpiar", 80, 460);
      textSize(19);
      text(texto[lineas+16], width/2, 100);
      text(texto[lineas+17], width/2, 120);
    }
  }
  void Desarrollo1() {
    if (frameCount > 0 && frameCount < 120) {
      image(foto[10], 0, 0);
    }
    if (frameCount > 119) {
      image(foto[20], 0, 0); 
      B.boton(470, 430, 100, 40);
      B.boton(30, 430, 100, 40);
      fill(255);
      textSize(25);
      text("Ir igual", 520, 460);
      text("No ir", 80, 460);
      textSize(20);
      text(texto[lineas+18], width/2, 100);
      text(texto[lineas+19], width/2, 120);
      text(texto[lineas+20], width/2, 140);
    }
  }
  void Desarrollo2() { 
    image(foto[11], 0, 0);
    B.boton(470, 430, 100, 40);
    B.boton(30, 430, 100, 40); 
    fill(255);
    textSize(22); 
    text("Fijarse", 520, 460);
    text("Ignorarlos", 80, 460);
    textSize(18); 
    text(texto[lineas+21], width/2, 100);
  }
  void Volver() {
    if (frameCount > 0 && frameCount < 200) {
      textSize(35);
      fill(255);
      text(texto[lineas+39], width/2, height/2);
    }
    if (frameCount > 200 ) {
      A.estado = "Desarrollo2";
    }
  }
  void Bifurcacion2() {
    if (frameCount > 0 && frameCount < 200) {
      image(foto[23], -200, 0);
    }
    if (frameCount > 199) {
      A.estado = "Desarrollo2";
    }
  }
  void Bifurcacion3() {
    if (frameCount > 0 && frameCount < 120) {
      image(foto[12], 0, 0);
    }
    if (frameCount >119) {
      image(foto[13], -150, 0);
      B.boton(470, 430, 100, 40);
      B.boton(30, 430, 100, 40); 
      fill(255);
      textSize(25); 
      text("Cerrar", 520, 460);
      text("Abrir", 80, 460);
      textSize(18);
      text(texto[lineas+22], width/2, 100);
      text(texto[lineas+23], width/2, 120);
      text(texto[lineas+24], width/2, 140);
    }
  }
  void Bifurcacion4() {
    if (frameCount > 0 && frameCount < 200) {
      image(foto[14], 0, 0); 
      textSize(20); 
      text(texto[lineas+25], width/2, 100);
      text(texto[lineas+26], width/2, 120);
    }
    if (frameCount > 199) {
      A.estado = "Bifurcacion3";
    }
  }
  void Bifurcacion5() {

    if (frameCount > 0 && frameCount < 60) {
      image(foto[15], 0, 0);
    }
    if (frameCount > 59 && frameCount < 120) {
      image(foto[16], 0, 0);
    }

    if (frameCount > 119 && frameCount < 400) {
      image(foto[17], -150, 0);
      textSize(18); 
      text(texto[lineas+27], width/2, 400);
      text(texto[lineas+28], width/2, 420);
      text(texto[lineas+29], width/2, 440);
    }
    if (frameCount > 399 && frameCount < 650) {
      image(fotos[0], -150, 0);
    }
    if (frameCount > 450 && frameCount < 649) {
      text(texto[lineas+30], width/2, 100);
    }
    if (frameCount > 649 && frameCount < 870) {
      image(fotos[1], -150, 0);
    }
    if (frameCount > 869 && frameCount < 1010) {
      image(fotos[2], 0, 0);
    }
    if (frameCount > 1009) {
      image(fotos[3], 0, 0);
      B.boton(470, 430, 100, 40);
      B.boton(30, 430, 100, 40); 
      fill(255);
      textSize(22); 
      text("Irte", 520, 460);
      text("Quedarte", 80, 460);
      textSize(18);
      text(texto[lineas+31], width/2, 90);
      text(texto[lineas+32], width/2, 110);
    }
  }
  void Final1() {
    image(foto[20], 0, 0);
    B.boton(470, 70, 100, 40);
    B.boton(30, 70, 100, 40);
    fill(255);
    textSize(25);
    textAlign(CENTER); 
    text("Hacerlo", 520, 100);
    text("Negarte", 80, 100);
    textSize(20);
    text(texto[lineas+33], width/2, 400);
    text(texto[lineas+34], width/2, 420);
  }

  void Final2() {
    if (frameCount > 0 && frameCount < 200) {
      textSize(25);
      image(foto[21], 0, 0);
      text(texto[lineas+35], width/2, height/2);
      text(texto[lineas+36], width/2, height/2+20);
    }
    if (frameCount > 199 && frameCount < 600) {
      terror2.play();
      terror2.amp(0.1);
      float blanco = map(frameCount, 200, 500, 0, 255); 
      fill(blanco);
      textSize(25);
      text(texto[lineas+37], width/2, height/2);
      text(texto[lineas+38], width/2, height/2+20);
    }
    if (frameCount > 599) {
      A.estado = "Creditos";
    }
  }
  void Final3() {
    if (frameCount >0 && frameCount< 80) {
      image(fotos[5], 0, 0);
    }
    if (frameCount > 79 && frameCount<160) {
      image(fotos[6], 0, 0);
    }
    if (frameCount > 159 && frameCount<320) {
      textSize(60); 
      text("FIN", width/2, height/2);
    }
    if (frameCount > 319) {
      A.estado = "Creditos";
    }
  }
  void Final4() {
    image(fotos[4], -100, 0);   
    B.boton(260, 240, 100, 40);
    fill(0);
    textSize(25);
    text("Abrir", 310, 270);
  }
  void Intrusos() {
    if (frameCount >0 && frameCount <200) {
      terror.play();
      terror.amp(0.1);
      image(intrusos, -100, 0);
    }
    if (frameCount >199 && frameCount <400) {
      image(intrusos, -100, 0);
    }
    if (frameCount >399 && frameCount <1200) {
      image(fotos[7], 0, 0);
      textSize(50);
      float blanco = map(frameCount, 399, 800, 0, 255); 
      fill(blanco); 
      text("Estas muerto", width/2, height/2);
    }  
    if (frameCount >599) {
      A.estado = "Creditos";
    }
  }
}
