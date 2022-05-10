class GestorDeInteracion {
  Dir_y_Vel mouse;
  boolean seMueve;
  float x_int, xint, xint2, x_int2,xint3, x_int3;
  float dir, vel;
  GestorDeInteracion() {
    mouse = new Dir_y_Vel();
    xint = 177;
    x_int = 248;
    xint2 = 152;
    x_int2 = 240;
     xint3 = 256;
    x_int3 = 150;
  }


  void mover() {
    println(seMueve);
    println(mouse.velocidad());

    mouse.calcularTodo(mouseX, mouseY);
    seMueve = false;
    float sensibilidad = 10; //con 2 es una buena opción
    if (mouse.direccionY()>sensibilidad) {
      seMueve = true;
    }
    if (mouseY<height && seMueve == true) {
      x_int++;
      xint--;
      xint2--;
        x_int2++;
        xint3++;
        x_int3--;
    } else if (seMueve == false && frameCount>100) { //si le sacamos el framecount puede servir para la vos.
      x_int--;
      xint++;
       xint2++;
        x_int2--;
        xint3--;
        x_int3++;
    }
    if (x_int == 248 & xint == 177) {
      frameCount=0;
      
    }
  }
}
