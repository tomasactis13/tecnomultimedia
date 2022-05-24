class Circulos {
  float x, y;
  float diam;
  color colorRelleno;
  float sensibilidad = 150;
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

    Circulo[16].resize(545, 545);
    image(Circulo[16], 590, 530);


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
    image(Circulo[9], 1000, 580);





    //--- Circulos Peques ---//
    imageMode(CENTER);
    Circulo[1].resize(720, 720);    
    image(Circulo[1], 217, 672, g.xcir, g.xcir); 
    Circulo[6].resize(362, 350);
    image(Circulo[6], 380, 250, g.xcir2, g.xcir2);
    Circulo[7].resize(400, 380);
    image(Circulo[7], 130, 100, g.xcir3, g.xcir3);
    Circulo[10].resize(450, 500);
    image(Circulo[10], 310, 370, g.xcir4, g.xcir4);
    Circulo[11].resize(300, 370);
    image(Circulo[11], 350, 100);
    Circulo[12].resize(700, 650);
    image(Circulo[12], 500, 600);
    Circulo[13].resize(450, 400);
    image(Circulo[13], 700, 450);
    Circulo[14].resize(700, 650);
    image(Circulo[14], 740, 650);
    Circulo[15].resize(720, 650);
    image(Circulo[15], 480, 370);

    //--Sistema Solar--//

    float angulo = radians(mouseY);
    float dist1 = 130;
    float dist2 = 190;
    float dist3 = 300;
    float x = dist1*cos(angulo*0.8);
    float y = dist1*sin(angulo*0.8);
    float x1 = dist2*cos(angulo*0.2);
    float y1 = dist2*sin(angulo*-0.2);

    float x2 = dist3*cos(angulo);
    float y2 = dist3*sin(angulo);
    println(y2);

    Circulo[16].resize(545, 545);
    image(Circulo[16], 590, 530);//centro (sol)
    translate(590, 530);
    Circulo[12].resize(700, 650);
    image(Circulo[12], x, y);
    Circulo[14].resize(700, 650);
    image(Circulo[14], x1, y1);
    translate(-445, -320);
    Circulo[0].resize(680, 580);
    image(Circulo[0], x2, y2);
    //  println(frameCount);


    popStyle();
  }

  void Fondo() {

    //  println(mouse.direccionX());
    //  println("seMueve2",seMueve2);
    mouse.calcularTodo(mouseX, mouseY);
    seMueve2 = false;


    if (mouse.direccionX()>sensibilidad) {
      seMueve2 = true;
    }
    pushStyle();
    image(Fondo, width/2, height/2);
    popStyle();
    /* if (mouseX<width && seMueve2 == true) {
     tint(random(255), random(255), random(255));
     } else if (seMueve == false && frameCount>10) { 
     tint(255);
     }*/
  }
}
