class Aventura {
  Creditos C;
  Botones B;
  Pantallas P;
  Juego J;
  Inicio I;
  PImage portada;
  PFont fuente1;
  String estado; 

  Aventura() {
    C = new Creditos();
    B = new Botones();
    P = new Pantallas();
    J = new Juego();
    I = new Inicio();
    estado = "Final2";
    portada = loadImage("portada.jpg"); 
    portada.resize(640, 540);
    fuente1 = createFont("CASA TOMADA.ttf", 50);
    textAlign(CENTER);
  }
  void dibujarAventura() { 
    if (estado.equals("Titulo")) { 
      image(portada, -20, -20);
      textFont(fuente1, 35);
      B.boton(415, 150, 150, 35);
      B.boton(425, 220, 130, 35);
      fill(255);
      text("Comenzar", 490, 180); 
      text("Creditos", 490, 250);
    }

    if (estado.equals("Introduccion")) {
      P.Introduccion(); 
    } 
    if (estado.equals("Creditos")) {
      C.dibujarCreditos();
    } 
    if (estado.equals("Introduccion2")) {
      P.Introduccion2();
    } 
    if (estado.equals("Desarrollo")) {
      P.Desarrollo();
    } 
    if (estado.equals("Desarrollo1")) {
      P.Desarrollo1();
    } 
    if (estado.equals("Desarrollo2")) {
      P.Desarrollo2();
    } 
    if (estado.equals("Bifurcacion2")) {
      P.Bifurcacion2();
    }  
    if (estado.equals("Bifurcacion3")) {
      P.Bifurcacion3();
    } 
    if (estado.equals("Bifurcacion4")) {
      P.Bifurcacion4();
    }  
    if (estado.equals("Bifurcacion5")) {
      P.Bifurcacion5();
    }  

    if (estado.equals("Final1")) {
      P.Final1();
    } 
    if (estado.equals("Final2")) {
      P.Final2();
    } 
    if (estado.equals("Final3")) {
      P.Final3();
    } 
    if (estado.equals("Final4")) {
      P.Final4();
    } 
    if (estado.equals("Intrusos")) {
      P.Intrusos();
    } 
    if (estado.equals("Volver")) {
      P.Volver();
    }
    if (estado.equals("InicioJuego")) {  
      J.dibujarJuego();
      J.agarrarLana();
    }
  }
  void reinicioJuego(){
    J.reiniciar();
  }
  void botonApretado() {
    if (B.botonPressed(mouseX, mouseY, 415, 150, 170, 40) && estado.equals("Titulo")) { 
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 10, 10, 100, 40) && estado.equals("Creditos")) {
      estado = "Titulo" ;
    }
    if (B.botonPressed(mouseX, mouseY, 415, 150, 170, 40) && estado.equals("Titulo")) { 
      estado = "Introduccion";
    }
    if (B.botonPressed(mouseX, mouseY, 430, 220, 134, 30 )&& estado.equals("Titulo") && frameCount >1) { 
      estado = "Creditos";
    }

    if (B.botonPressed(mouseX, mouseY, 250, 240, 100, 40 )&& estado.equals("Introduccion") && frameCount >1) { 
      estado = "Introduccion2"; 
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 250, 240, 100, 40 )&& estado.equals("Introduccion1") && frameCount >1) { 
      estado = "Introduccion2";
    }
    if (B.botonPressed(mouseX, mouseY, 470, 430, 100, 40 )&& estado.equals("Desarrollo")&& frameCount >1) { 
      estado = "Desarrollo1";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 470, 430, 100, 40 )&& estado.equals("Desarrollo1") && frameCount >1) { 
      estado = "InicioJuego";
    }
    if (B.botonPressed(mouseX, mouseY, 30, 430, 100, 40 )&& estado.equals("Desarrollo1") && frameCount >1) { 
      estado = "Bifurcacion2"; 
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 470, 430, 100, 40 )&& estado.equals("Desarrollo2") && frameCount >1) { 
      estado = "Bifurcacion3"; 
      frameCount = 0;
    }

    if (B.botonPressed(mouseX, mouseY, 30, 430, 100, 40 )&& estado.equals("Desarrollo2") && frameCount >1) { 
      estado = "Bifurcacion4"; 
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 470, 430, 100, 40 )&& estado.equals("Bifurcacion3") && frameCount >1) { 
      estado = "Bifurcacion5"; 
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 30, 430, 100, 40 )&& estado.equals("Bifurcacion3") && frameCount >1) { 
      estado = "Final4"; 
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 30, 430, 100, 40 )&& estado.equals("Desarrollo")) { 
      estado = "Final1";
    }
    if (B.botonPressed(mouseX, mouseY, 30, 70, 100, 40 )&& estado.equals("Final1")) { 
      estado = "Final2";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 470, 430, 100, 40 )&& estado.equals("Bifurcacion5") && frameCount >1) { 
      estado = "Final3";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 30, 430, 100, 40 )&& estado.equals("Bifurcacion5")) { 
      estado = "Final4";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 260, 240, 100, 40 )&& estado.equals("Final4")) { 
      estado = "Intrusos";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 470, 70, 100, 40 )&& estado.equals("Final1")) { 
      estado = "Desarrollo1";
      frameCount = 0;
    }
  }//botonApretado
}//class
