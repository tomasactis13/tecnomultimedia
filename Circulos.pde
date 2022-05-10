class Circulos {
  float x, y;
  float diam;
  color colorRelleno;


  Circulos() {
    x = 600;
    y = 700;
    diam = 270;
    colorRelleno = color(0, 255, 0);
  }





  void dibujar() {
    pushStyle();

    Circulo[0].resize(500, 500);
    image(Circulo[0], g.xint, 440);
    Circulo[1].resize(500, 500);
    image(Circulo[1], g.x_int, 440); 
    Circulo[2].resize(700, 700);
    image(Circulo[2], g.xint2, 640);
    Circulo[3].resize(700, 700);
    image(Circulo[3], g.x_int2, 610);
    Circulo[4].resize(370, 370);
    image(Circulo[4], g.xint3, 210);
    Circulo[5].resize(370, 370);
    image(Circulo[5], g.x_int3, 210);
    Circulo[8].resize(800, 700);
    image(Circulo[8], 700, 200);
    Circulo[9].resize(800, 700);
    image(Circulo[9], 700, 700);
    
    
    

    //--- Circulos Peques ---//
    imageMode(CENTER);
    Circulo[6].resize(362, 350);
    image(Circulo[6], 340, 200, mouseX, mouseX);
    Circulo[7].resize(400, 380);
    image(Circulo[7], 130, 100, mouseX, mouseX);
    Circulo[10].resize(400, 400);
    image(Circulo[10], 350, 350,mouseX,mouseX);
    Circulo[11].resize(300, 370);
    image(Circulo[11], 350, 100);
    Circulo[11].resize(300, 370);
    image(Circulo[11], 500, 500);
    println(frameCount);
  

    popStyle();
  }
}
