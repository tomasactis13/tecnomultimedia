class Creditos {
  Botones B;
  Creditos() {
    B = new Botones();
  }
  void dibujarCreditos() {
    fill(255); 

    textSize(30);
    text("Create by", width/2, 200);
    textSize(20); 
    text("Tomás Actis", width/2, 230);
    text("(legajo:88329/1)", width/2, 250);


    textSize(28); 
    text("Tecnología Multimedia", width/2, 400);  

    text("Universidad Nacional de La Plata", width/2, 450);
    B.boton(10, 10, 100, 40);
    fill(255);
    text("Inicio", 60, 40);
  }
}
