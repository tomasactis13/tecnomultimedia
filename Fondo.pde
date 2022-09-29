class Fondo  {
  PImage fondo;
  PImage fondo2;
   float fx;
  boolean derechaf;
  int mover;
Fondo(){

  fx=-10;
fondo = loadImage ("fondo0.jpg");
fondo2 = loadImage ("fondo1.jpg");
}
void dibujarFondo (){
  println (fx + "fx");
image (fondo2,fx+794,0);
  image (fondo,fx = constrain (fx,-176.5,-10 ),0);
if (derechaf ) {
      if (frameCount%10==0) {
        mover ++;
        mover = mover%2;
      }
   
}}


void moverFondo(int tecla){
if (keyPressed){
      if (key =='D' || key=='d' || tecla== RIGHT) {
        fx -=1.5;
      derechaf = true;
    } 
      }
         

if (keyPressed){
 
      if (key =='A' || key=='a'|| tecla == LEFT) {
      fx +=1.5;
      
      derechaf= false;
    }
      }   
  }
}
