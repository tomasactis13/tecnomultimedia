class Circulos {
  float diam;
  color colorRelleno;
  float sensibilidad = 150;
  boolean seMueve2 = false;
  float rx;
  Circulos() {

    diam = 270;
    colorRelleno = color(0, 255, 0);
  }





  void dibujar() {
    pushStyle(); 
    noTint();
    if (tono<80 && tono>65 && amp>minimoAmp) {
      rx+=50;
    }
    if (tono<65 && tono>60 && amp>minimoAmp) {
      rx+=40;
    }
    if (tono<60 && tono>55 && amp>minimoAmp) {
      rx+=30;
    }
    if (tono<55 && tono>50 && amp>minimoAmp) {
      rx+=20;
    }
    if (tono<50 && tono>48 && amp>minimoAmp) {
      rx+=10;
    }
    if (tono<48 && tono>40 && amp>minimoAmp) {
      rx+=5;
    }

    if (tono>80  && amp>minimoAmp) {
      rx+=60;
    }


    float angulo = radians(rx);
    float angulogr = radians(rx);
    float dist1 = 130;
    float dist2 = 190;
    float dist3 = 300;
    float dist4 = 220;

    float x = dist1*cos(angulo);
    float y = dist1*sin(angulo-0.8);
    float x1 = dist2*cos(angulo+1);
    float y1 = dist2*sin(angulo+0.7);
    float x2 = dist3*cos(angulogr*0.2);
    float y2 = dist3*sin(angulogr*0.2);
    float x3= dist4*cos(angulogr*0.5);
    float y3 = dist4*sin(angulogr*0.5);


    //--Sistema Solar--//
    Circulo[4].resize(450, 450);
    image(Circulo[4], 288, 240);
    Circulo[5].resize(450, 450);
    image(Circulo[5], 158, 240);
    Circulo[8].resize(800, 700);
    image(Circulo[8], 700, 200);
    imageMode(CENTER);
    Circulo[1].resize(300, 500);    
    image(Circulo[1], 217, 672, g.xcir, g.xcir+50);
    Circulo[11].resize(300, 370);
    image(Circulo[11], 350, 100);
    pushMatrix();
    translate(217, 220);
    Circulo[0].resize(500, 600);
    image(Circulo[0], x2, y2);
    popMatrix();
    Circulo[16].resize(545, 545);
    image(Circulo[16], 590, 530);//centro (sol)
    pushMatrix();
    translate(590, 540);
    Circulo[13].resize(450, 400);
    image(Circulo[13], x, y);
    popMatrix();
    Circulo[17].resize(116, 116);
    image(Circulo[17], 590, 539);//centro (sol)
    pushMatrix();
    translate(545, 545);
    Circulo[15].resize(620, 550);
    image(Circulo[15], x3, y3);
    popMatrix();
    pushMatrix();
    translate(590, 530);
    Circulo[14].resize(700, 650);
    image(Circulo[14], x1, y1);
    popMatrix();
    pushMatrix();
    translate(220, 220);
    Circulo[10].resize(450, 500);
    image(Circulo[10], x1, -y1, g.xcir4, g.xcir4);
    Circulo[7].resize(400, 380);   
    image(Circulo[7], x1, y1, g.xcir3, g.xcir3);
    //Circulo[6].resize(362, 350);
    //image(Circulo[6], x3, y3, g.xcir2, g.xcir2);
    popMatrix();


    popStyle();
  }
  void Fondo() {

    //  println(mouse.direccionX());
    //  println("seMueve2",seMueve2);
    seMueve2 = false;




    /* if (mouseX<width && seMueve2 == true) {
     tint(random(255), random(255), random(255));
     } else if (seMueve == false && frameCount>10) { 
     tint(255);
     }*/
  }
}
