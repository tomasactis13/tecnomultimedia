PImage portada, fotoprueba;
PFont fuente1;
String estado; 
String [] texto = {"Comenzar", "Créditos"};  
void setup(){
 println(estado);
  size(600,500);
  portada = loadImage("portada.jpg"); 
  portada.resize(640,540); 
 fotoprueba = loadImage("fotoprueba.jpg"); 
 fotoprueba.resize(1000,540); 
estado = "titulo"; 
 
 fuente1 = createFont("CASA TOMADA.ttf",32); 
}
void draw(){
   background(0);
 if(estado.equals("titulo")){ 
   image(portada,-20,-20);
     text("Comenzar",420,180);
       text("Créditos",440,250);
}else if(estado.equals("introduccion")){
  introduccion();
}else if(estado.equals("desarrollo")){
  desarrollo();  
}else if(estado.equals("desarrollo")){
  desarrollo();
}
    textFont(fuente1,40); 
    texto2(440,220,134,30);
    texto(415,150,170,40);
}
void mousePressed() {
  if (textoPressed(mouseX, mouseY, 415, 150, 170, 40) && estado.equals("titulo")) { 
 estado = "introduccion"; 
  }
  if (textoPressed(mouseX, mouseY,440,220,134,30 )) { 
    
  }
}

void texto(int px, int py, int ancho, int alto) { 
  if (textoOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(255);
  } else {
    fill(200);
  }
  //text("Comenzar",420,180);
}
 void texto2(int px, int py, int ancho, int alto) { 
 if (textoOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(255);
  } else {
    fill(200);
  }
//  text("Créditos",440,250);
}
 

boolean textoPressed(int mx, int my, int px, int py, int ancho, int alto) {
  boolean presionado = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
  return presionado;
}


  boolean textoOver(int mx, int my, int px, int py, int ancho, int alto) {
  if (mx>px && mx<px+ancho && my>py&&my<py+alto) {
    return true;
  } else {
    return false;
  }
}
  
