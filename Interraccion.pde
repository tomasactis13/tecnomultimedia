class GestorDeInteracion {
  Dir_y_Vel mouse;
  float xcir, xcir2, xcir3, xcir4, x_int, xint, xint2, x_int2, xint3, x_int3;
  float dir, vel;
  GestorSenial gestorAmp;
  GestorDeInteracion() {
    gestorAmp = new GestorSenial(minimoAmp, maximoAmp, f);
    mouse = new Dir_y_Vel();
    xint = 217;
    x_int = 262;
    xint2 = 172;
    x_int2 = 260;
    xint3 = 288;
    x_int3 = 158;
    xcir = 720;
    xcir2 = 362;
    float f = 0.5;
    xcir3 =  map(gestorAmp.filtradoNorm(), 0, 1, 400, 800);
    xcir4 = 450;
    haySonido = false;
    gestorAmp = new GestorSenial(minimoAmp, maximoAmp, f);
  }


  void mover() {
    println(haySonido, amp);

    mouse.calcularTodo(mouseX, mouseY);
    seMueve = false;
    Cirpeq = false;


    float sensibilidad = 10; //con 2 es una buena opción

    if (mouse.direccionY()>sensibilidad) {
      seMueve = true;
    }
    if (tono>minimoPitch && amp >minimoAmp) {
      xcir3+=30;
      xcir4+=30;
    }
    if (tono<48 && amp>60 && haySonido == true) {
      xcir3-=50;
      xcir4-=50;
    }
    if (amp>minimoAmp) {
      haySonido = true;
    }
    if (amp<minimoAmp) {
      haySonido = false;
    }
    if (haySonido == true) {
      xint2--;
      x_int2++;
      xcir+=20;
      xcir2+=10;
    }
    if (haySonido == false && x_int2 > 260 & xint2 < 215 && xcir>720 ) {
      xint2++;
      x_int2--;
      xcir-=20;
    }

  }
}
