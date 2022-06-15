class GestorDeInteracion {

  float xcir, xcir2, xcir3, xcir4;
  float dir, vel;
  GestorSenial gestorAmp;
  GestorDeInteracion() {
    //gestorAmp = new GestorSenial(minimoAmp, maximoAmp, f);
    xcir = 200;
    xcir2 = 362;
    float f = 0.5;
    xcir3 =  400;
    xcir4 = 450;
    haySonido = false;
    gestorAmp = new GestorSenial(minimoAmp, maximoAmp, f);
  }


  void mover() {
    println(xcir3);
    if (tono>minimoPitch && amp >minimoAmp) {
      xcir3+=20;
      xcir4+=20;
    }
    if(xcir3 > 800 && xcir4> 800){
      xcir3-=10;
      xcir4-=10;
    }
    println(xcir3);
    if (tono<minimoPitch && amp>minimoAmp && xcir3>400) {
      xcir3-=30;
      xcir4-=30;
    }
    if (amp>minimoAmp) {
      haySonido = true;
    }
    if (amp<minimoAmp) {
      haySonido = false;
    }
    if (haySonido == true) {
      xcir+=5;
      xcir2+=10;
    }
    if (haySonido == false && xcir>200 ) {
      xcir-=8;
    }

  }
}
