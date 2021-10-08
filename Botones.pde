void mousePressed() {
 if(botonPressed(mouseX, mouseY, 415, 150, 170, 40) && estado.equals("Titulo") && frameCount >1) { 
   frameCount = 0; 
 }
  if(botonPressed(mouseX,mouseY,10,10,100,40) && estado.equals("Creditos")){
   estado = "Titulo" ; 
 }
  if (botonPressed(mouseX, mouseY, 415, 150, 170, 40) && estado.equals("Titulo")) { 
 estado = "Personajes"; 
  }
  if (botonPressed(mouseX, mouseY,430,220,134,30 )&& estado.equals("Titulo") && frameCount >1) { 
estado = "Creditos";     
  }

   if (botonPressed(mouseX, mouseY,250,240,100,40 )&& estado.equals("Introduccion1") && frameCount >1) { 
estado = "Introduccion2"; 
frameCount = 0;
   }
if (botonPressed(mouseX, mouseY,250,240,100,40 )&& estado.equals("Introduccion1") && frameCount >1) { 
estado = "Introduccion2"; 
}
if (botonPressed(mouseX, mouseY,470,430,100,40 )&& estado.equals("Desarrollo") && frameCount >1) { 
estado = "Desarrollo1"; 
frameCount = 0; 
}
if (botonPressed(mouseX, mouseY,470,430,100,40 )&& estado.equals("Desarrollo1") && frameCount >1){ 
estado = "Bifurcacion1"; 
frameCount = 0; 
}
if (botonPressed(mouseX, mouseY,30,430,100,40 )&& estado.equals("Desarrollo1") && frameCount >1){ 
estado = "Bifurcacion2"; 
frameCount = 0; 
}
if (botonPressed(mouseX, mouseY,470,430,100,40 )&& estado.equals("Desarrollo2") && frameCount >1){ 
estado = "Bifurcacion3"; 
frameCount = 0; 
}

if (botonPressed(mouseX, mouseY,30,430,100,40 )&& estado.equals("Desarrollo2") && frameCount >1){ 
estado = "Bifurcacion4"; 
frameCount = 0;
}
if (botonPressed(mouseX, mouseY,470,430,100,40 )&& estado.equals("Bifurcacion3") && frameCount >1){ 
estado = "Bifurcacion5"; 
frameCount = 0;
}
if (botonPressed(mouseX, mouseY,30,430,100,40 )&& estado.equals("Bifurcacion3") && frameCount >1){ 
estado = "Bifurcacion6"; 
frameCount = 0;
}
if (botonPressed(mouseX, mouseY,30,430,100,40 )&& estado.equals("Desarrollo")) { 
estado = "Final1";
}
if (botonPressed(mouseX, mouseY,30,70,100,40 )&& estado.equals("Final1")) { 
estado = "Final2";
frameCount = 0; 
}
if (botonPressed(mouseX, mouseY,470,430,100,40 )&& estado.equals("Bifurcacion5") && frameCount >1) { 
estado = "Final3";
frameCount = 0; 
}
if (botonPressed(mouseX, mouseY,30,430,100,40 )&& estado.equals("Bifurcacion5")) { 
estado = "Final4";
frameCount = 0; 
}
if (botonPressed(mouseX, mouseY,260,240,100,40 )&& estado.equals("Final4")) { 
estado = "Intrusos";
frameCount = 0; 
}
if (botonPressed(mouseX, mouseY,90,100,60,60 )|| botonPressed(mouseX, mouseY,width/2,100,60,60 )|| botonPressed(mouseX, mouseY,480,100,60,60 ) && estado.equals("Bifuracion1")&& frameCount >1) { 
estado = "Volver";
frameCount = 0;
}
if (botonPressed(mouseX, mouseY,470,70,100,40 )&& estado.equals("Final1")) { 
estado = "Desarrollo1";
frameCount = 0;
}
}
  void boton(int px, int py, int ancho, int alto) { 
 if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(245,217,114);
  } else {
    fill(41,22,1);
  }
   noStroke(); 
rect(px,py,ancho,alto); 
 }   
  
   void boton1(int px, int py, int ancho, int alto) { 
 if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(232,16,16);
  } else {
    fill(196,12,12);
  }
    noStroke(); 
rect(px,py,ancho,alto);
   }
   void boton2(int px, int py, int ancho, int alto) { 
 if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(242,192,24);
  } else {
    fill(255,197,3);
  }
    noStroke(); 
rect(px,py,ancho,alto);
   }
   void boton3(int px, int py, int ancho, int alto) { 
 if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(23,204,209);
  } else {
    fill(19,226,232);
  }
    noStroke(); 
rect(px,py,ancho,alto);
   }



 

boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {
  boolean presionado = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
  return presionado;
}


  boolean botonOver(int mx, int my, int px, int py, int ancho, int alto) {
  if (mx>px && mx<px+ancho && my>py&&my<py+alto) {
    return true;
  } else {
    return false;
  }
}
