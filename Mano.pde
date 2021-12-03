class Mano {
  int mtam, xm, ym;
  PImage mano;
  Mano() {
    mtam = 50;
    xm = width/2;
    ym = 460;
    mano =  loadImage("mano.png");
    mano.resize(50,40);
 
    
        
  }
  void dibujarMano() {
    fill(100); 
    image(mano, xm, ym);
  }
  void moverMano(int tecla) {  
    if (tecla==RIGHT && xm<width-50) {
      xm+=5;
    }
    if (tecla==LEFT && xm>0) {
      xm-=5;
    }
  }
}
