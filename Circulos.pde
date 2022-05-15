class Circulos {
  float x, y;
  float diam;
  color colorRelleno;
  float sensibilidad = 50;
  boolean seMueve2 = false;
  Dir_y_Vel mouse;
  Circulos() {
    x = 600;
    y = 700;
    diam = 270;
    colorRelleno = color(0, 255, 0);
    mouse = new Dir_y_Vel();
  }





  void dibujar() {
    pushStyle();

    Circulo[0].resize(500, 500);
    image(Circulo[0], g.xint, 480);
    Circulo[1].resize(500, 500);
    image(Circulo[1], g.x_int, 480); 
    Circulo[2].resize(700, 700);
    image(Circulo[2], g.xint2, 670);
    Circulo[3].resize(700, 700);
    image(Circulo[3], g.x_int2, 640);
    Circulo[4].resize(450, 450);
    image(Circulo[4], g.xint3, 240);
    Circulo[5].resize(450, 450);
    image(Circulo[5], g.x_int3, 240);
    Circulo[8].resize(800, 700);
    image(Circulo[8], 700, 200);
    Circulo[9].resize(800, 700);
    image(Circulo[9], 700, 700);




    //--- Circulos Peques ---//
    imageMode(CENTER);
    Circulo[6].resize(362, 350);
    image(Circulo[6], 380, 250, mouseX, mouseX);
    Circulo[7].resize(400, 380);
    image(Circulo[7], 130, 100, mouseX, mouseX);
    Circulo[10].resize(450, 500);
    image(Circulo[10], 310, 370, mouseX, mouseX);
    Circulo[11].resize(300, 370);
    image(Circulo[11], 350, 100);
    Circulo[11].resize(300, 370);
    image(Circulo[11], 500, 500);
    println(frameCount);


    popStyle();
  }

  void Fondo() {
   
    println(mouse.direccionX());
    println("seMueve2",seMueve2);
     mouse.calcularTodo(mouseX, mouseY);
     seMueve2 = false;
    image(Fondo, width/2, height/2);
    
    if (mouse.direccionX()>sensibilidad) {
      seMueve2 = true;
    }
     popStyle();
    if (mouseX<width && seMueve2 == true) {
      tint(random(255), random(255), random(255));
    } else if (seMueve == false && frameCount>1) { 
     tint(255);
    }
   
    
    
  }
}
