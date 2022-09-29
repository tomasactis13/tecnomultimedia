class Perro {
  int px, py, ptam;
  PImage [] perroD;
  PImage [] perroI;
  PImage [] alimentar;
  int mover;
  boolean derecha;
  boolean izquierda;
  boolean comer = false;
  PImage comida;
  String estado = "perroCaminando";
  int cx;
  int px2;

  Perro() {
    perroD = new PImage [2];
    perroI= new PImage [2];
    alimentar = new PImage [2];
    for (int i=0; i < perroD.length; i++) {
      perroD[i] = loadImage("pder"+i+".png");
    }

    for (int i=0; i < perroI.length; i++) {
      perroI[i] = loadImage("pizq"+i+".png");
    }

    px = 25;
    px2=350;
    py=450;
    cx=770;
    derecha = true;
    izquierda=true;
    comer=false;
    comida = loadImage ("comida.png");
  }

  void dibujarperro () {
    // println ("px"+px);
    if (derecha || izquierda ) {
      if (frameCount%10==0) {
        mover ++;
        mover = mover%2;
      }
      if ( derecha && estado == "perroCaminando") {
        image(perroD[mover], px = constrain(px, 10, 350), py);
      } else if (izquierda && estado == "perroCaminando") {
        image(perroI[mover], px = constrain (px, 10, 350), py);
      }
    }
  }

  void moverperro (int teclaPresionada) {

    if (keyPressed) {
      if (key =='D' || key=='d' || teclaPresionada== RIGHT ) {
        estado = "perroCaminando";
        //       

        px += 3;
        derecha = true;
        // izquierda=false;
      }
    }


    if (keyPressed) {

      if (key =='A' || key=='a'|| teclaPresionada == LEFT ) {
        px -= 3;
        estado = "perroCaminando";
        //derecha= false;
        izquierda=true;
      }
    }
  }

  void dibujarcomida() {
    // println (cx, "cx");

    image (comida, cx= constrain(cx, 450, 770), 535);
  }


  void movercomida (int teclaPresionada) {

    if (keyPressed) {
      if (key =='D' || key=='d' || teclaPresionada== RIGHT && comer == false) {


        cx -= 3;
        derecha = true;
      }
    }
    if (keyPressed) {
      if (key =='A' || key=='a' || teclaPresionada== LEFT && comer == false) {

        //       image(perroD[mover], px, py);

        cx += 3;
        derecha = false;
      }
    }


      if (px>=350) {
        if (key =='S' || key=='s'|| teclaPresionada == DOWN) {
          estado = "perroComiendo";
          comer = true;
          //derecha = false;
          // izquierda = true;
        }
        if (estado == "perroComiendo") {
          for (int i=0; i < alimentar.length; i++) {
            alimentar[i] = loadImage("alim"+i+".png");
          }
          image(alimentar[mover], px2 = constrain (px2, 0, 350), 473);
        }
      }
    }
  }
