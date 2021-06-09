int pantalla,color1,color2,color3;
PFont fuente;
PFont fuente1;
PFont fuente2;
PFont fuente3;
PFont fuente4;
PImage fondo1, marca;
int ix, iy;
float px,py;

void setup(){
  size(600,500); 
 pantalla =1; 
  fuente =  loadFont("Impact-48.vlw");
  fondo1 =  loadImage("fondo.jpg"); 
  marca =   loadImage("marca1.jpg"); 
  fuente1 = loadFont("PoplarStd-80.vlw");
  fuente2 = loadFont("SegoeScript-50.vlw");
  fuente3 = loadFont("ArialNarrow-Bold-48.vlw");
  fuente4 = createFont("base02.ttf", 32); 
ix = -200;
iy = 0; 
px = random(290,310);
py = random(200,400);
color1 = (200); 
color2 = (255); 
color3 = (0); 
}
void draw(){
   textAlign(CENTER);
   background(0);
   textFont(fuente4,100);
  println(frameCount);
  println(mouseX, mouseY); 
   if(pantalla == 1 && frameCount < 380 || frameCount > 0 && frameCount < 380){
       image(fondo1,ix,iy);
   }
  fill(50,50,255);
  ellipse(50,550,50,50);
   if(frameCount >= 0 && frameCount < 160){
 
   float rojo = map(frameCount, 0, 160, 0, 255); 
   float verde = map(frameCount, 0, 160, 0, 50);
   float azul = map(frameCount, 0, 160, 0, 50);
   float blanco = map(frameCount, 0, 160, 0, 255);
 
    fill(rojo, verde, azul); 
   text("4", 310,270);
     fill(blanco);
     textFont(fuente4,40);
   text("UNCHARTED", 150,250);
   textFont(fuente2,28);
    text("A Thiefs End", 170,280);

   }
   if(frameCount > 159 && frameCount < 280){
   fill(255,50,50); 
   text("4", 310,270);
   
   fill(255); 
     textFont(fuente4,40);
   text("UNCHARTED", 150,250);
     textFont(fuente2,28);
    text("A Thiefs End", 170,280);
   }
   if(frameCount > 279 && frameCount < 370){
   float rojo = map(frameCount, 280, 340, 255, 255); 
   float verde = map(frameCount, 280, 340, 50,50);
   float azul = map(frameCount, 280, 340, 50, 50);
   float blanco = map(frameCount, 280, 340, 255, 255);
   fill(rojo, verde, azul); 
   text("4", 310,270);
   fill(blanco); 
      textFont(fuente4,40);
   text("UNCHARTED", 150,250);
     textFont(fuente2,28);
    text("A Thiefs End", 170,280);
   }
   if(frameCount > 350){ 
    
   }
  
   if(frameCount > 339 && frameCount < 390) { 
     fill(0);
     rect(0,0, 600,500);
   }
  if(frameCount > 400 && frameCount < 550){
   image(marca, 50,100,500,300); 
  }
   
  if(frameCount > 600 && frameCount < 750){
  fill(color1);
  textFont(fuente3,22); 
  text("PROTAGONIST",300, 240); 
  fill(color2);
  textFont(fuente3,40); 
  text("NATHAN DRAKE",300, 290);
  }
  if(frameCount > 775 && frameCount < 950){
  fill(color1);
  textFont(fuente3,22); 
  text("MAIN CHARACTERS",300, 180); 
  fill(color2);
  textFont(fuente3,30); 
  text("SAMUEL DRAKE",300, 230);
   fill(color2);
  textFont(fuente3,30); 
  text("RAFA ADLER",300, 270);
  fill(color2);
  textFont(fuente3,30); 
  text("VICTOR SULLIVAN",300, 310);
  fill(color2);
  textFont(fuente3,30); 
  text("ELENA FISHER",300, 350);
  }
   if(frameCount > 975 && frameCount < 1125){
  fill(color1);
  textFont(fuente3,20); 
  text("DIRECT BY",300, 180); 
  fill(color2);
  textFont(fuente3,28); 
  text("BRUCE STRALEY",175, 230);
  fill(color2);
  textFont(fuente3,28); 
  text("NEIL DRUCKMAN",425, 230);
   fill(color1);
  textFont(fuente3,20); 
  text("ART DIRECTORS",300, 300); 
  fill(color2);
  textFont(fuente3,28); 
  text("ROBH RUPPEL",175, 350);
  fill(color2);
  textFont(fuente3,28); 
  text("ERICK PANGILNAN",425, 350);
   }
    if(frameCount > 1150 && frameCount < 1300){
       fill(color1);
  textFont(fuente3,20); 
    text("LEAD ARTIST",300, 190);
   fill(color2);
  textFont(fuente3,28); 
  text("TATE MOSESIAN",300, 230);
    fill(color1);
  textFont(fuente3,20); 
  text("LEAD TECHNICAL ARTIST",300, 300);
   fill(color2);
  textFont(fuente3,28); 
  text("MICHEL HATFIELD",300, 340);
  
  }
  if(frameCount > 1325 && frameCount < 1500){
textFont(fuente3,18); 
 fill(color1);
 text("LEAD PROGRAMMER",125, 180); 
   fill(color2);
  textFont(fuente3,22); 
  text("CRHISTIAN GYRLING",125, 230);
   fill(color2);
  textFont(fuente3,22); 
  text("SANDEEP SHEKAR",125, 270);
  fill(color2);
  textFont(fuente3,22); 
  text("VINCENT MARXEN",125, 310);
   fill(color2);
  textFont(fuente3,22); 
  text("TRAVIS MCINTOSH",125, 350);
  fill(color2);
  textFont(fuente3,22); 
  text("JASON GREGORY",125, 390);
  textFont(fuente3,18); 
 fill(color1);
 text("LEAD ANIMATORS",475, 180); 
  fill(color2);
  textFont(fuente3,22); 
  text("JEREMY YATES",475, 230);
   fill(color2);
  textFont(fuente3,22); 
  text("MICHAEL YOSH",475, 270);
   fill(color1);
  textFont(fuente3,18); 
  text("LEAD CINEMATIC ANIMATORS",475, 330);
   fill(color2);
  textFont(fuente3,22); 
  text("ERIC BALDWIN",475, 380);
  fill(color2);
  textFont(fuente3,22); 
  text("SHAUN ESCAYG",475, 420);
  }  
  if(frameCount > 1525 && frameCount < 1675){
         fill(color1);
  textFont(fuente3,20); 
    text("LEAD EDITOR",300, 190);
   fill(color2);
  textFont(fuente3,28); 
  text("RYAN M. JAMES",300, 230);
    fill(color1);
  textFont(fuente3,20); 
  text("LEAD AUDIO",300, 300);
   fill(color2);
  textFont(fuente3,28); 
  text("PHIL KOVATS",300, 340);
  }
    if(frameCount > 1700 && frameCount < 1850){
  fill(255);
  textFont(fuente3,35);
text("Sony Computer Entertainment",px,py);
    }
}
void mousePressed(){
  frameCount = 0; 

}
