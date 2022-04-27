class GestorDeInteracion {
  Dir_y_Vel mouse;
  boolean movGrande;
  boolean movPeque;
  float tiempoGrande;
  float tiempoPeque;
  float x, y, t, c;
  float dir, vel;
  GestorDeInteracion() {
    mouse = new Dir_y_Vel();
    x= width/2.0;
    y=height/2.0; 
    vel=2;
    dir=30;
  }

  void actualizar() {
    mouse.calcularTodo(mouseX, mouseY);
    movGrande = false;
    movPeque = false;
    tiempoGrande--;
    tiempoPeque--;
    tiempoGrande = constrain(tiempoGrande, 0, 90);
    tiempoPeque = constrain(tiempoPeque, 0, 90);
    println(tiempoPeque);
    if (mouse.velocidad()>10) {
      float umbral = 40;
      if (mouse.velocidad()>umbral) {
        tiempoGrande+=10;
        tiempoPeque-=10;
      } else {
        if (tiempoGrande<10) {
          tiempoPeque+=10;
        }
      }
    }

    if (tiempoGrande>80) {
      movGrande = true;
    } 
    if (tiempoPeque>80) {
      movPeque = true;
    }
  }
  void moverMouse() {
    dir=30;
    x = x+vel*cos(dir);
    y = y+vel*sin(dir);
  }
}
