//*NUEVO
class Obstaculos {

  Obstaculos() {

    //Arbol = loadImage("Arbol.png");
    //Arbol.resize(270, 570);
    Nido = loadImage("nido.png");
    Nido.resize(100, 100);
    Lombriz = loadImage("lombrizCafe.png");
    Lombriz.resize(60, 60);
    Lombriz2 = loadImage("lombrizCigarrillo.png");
    Lombriz2.resize(60, 60);
    Lombriz3 = loadImage("lombrizCiega.png");
    Lombriz3.resize(60, 60);
    Poste = loadImage("poste.png");
    Poste.resize(250, 600);
    Halcon = loadImage("halcon.png");
    Halcon.resize(300, 130);
    Halconb = loadImage("halconb.png");
    Halconb.resize(300, 130);
  }
  void dibujarObs() {
    poste1_ = new FBox(190, 80);
    poste1_.setGrabbable(false);
    poste1_.setFill(0, 0);
    poste1_.setPosition(400, 415);
    poste1_.setStatic(true);
    poste1_.setName("poste1_");
    mundo.add(poste1_);

    poste1 = new FBox(50, 500);
    poste1.setGrabbable(false);
    poste1.setFill(50);
    poste1.setPosition(400, 600);
    poste1.setStatic(true);
    poste1.attachImage(Poste);
    poste1.setName("poste1");
    mundo.add(poste1);

    poste2_ = new FBox(190, 80);
    poste2_.setGrabbable(false);
    poste2_.setFill(0, 0);
    poste2_.setPosition(650, 315);
    poste2_.setStatic(true);
    poste2_.setName("poste2_");
    mundo.add(poste2_);

    poste2 = new FBox(50, 500);
    poste2.setGrabbable(false);
    poste2.setFill(50);
    poste2.setPosition(650, 500);
    poste2.setStatic(true);
    poste2.attachImage(Poste);
    poste2.setName("poste2");
    mundo.add(poste2);

    poste3_ = new FBox(190, 80);
    poste3_.setGrabbable(false);
    poste3_.setFill(0, 0);
    poste3_.setPosition(1000, 315);
    poste3_.setStatic(true);
    poste3_.setName("poste3_");
    mundo.add(poste3_);

    poste3 = new FBox(50, 500);
    poste3.setGrabbable(false);  
    poste3.setPosition(1000, 500);
    poste3.setStatic(true);
    poste3.attachImage(Poste);
    poste3.setName("poste3");
    mundo.add(poste3);

    arbol = new FBox(130, 100);
    arbol.setGrabbable(false);
    arbol.setPosition(100, 400);
    arbol.setStatic(true);
    arbol.attachImage(Arbol);
    arbol.setName("arbol");
    mundo.add(arbol);

    nido = new FBox(50, 50);
    nido.setGrabbable(false);
    nido.setStatic(true);
    nido.setPosition(500, 620);
    nido.attachImage(Nido);
    nido.setName("nido");
    mundo.add(nido);

    halcon = new FBox(100, 50);
    halcon.setPosition(1200, random(40, 200));
    halcon.setGrabbable(false);
    halcon.setStatic(false);
    halcon.setRotatable(false);
    halcon.attachImage(Halcon);
    halcon.setName("halcon");
    mundo.add(halcon);


    lombriz = new FBox(40, 40);
    lombriz.setGrabbable(false);
    lombriz.setStatic(true);
    lombriz.setPosition(1100, 500);
    lombriz.attachImage(Lombriz);
    lombriz.setName("lombrizCafe");
    mundo.add(lombriz);

    lombriz2 = new FBox(40, 40);
    lombriz2.setGrabbable(false);
    lombriz2.setStatic(true);
    lombriz2.setPosition(600, 600);
    lombriz2.attachImage(Lombriz2);
    lombriz2.setName("lombrizCigarrillo");
    mundo.add(lombriz2);



    lombriz3 = new FBox(40, 40);
    lombriz3.setGrabbable(false);
    lombriz3.setStatic(true);
    lombriz3.setPosition(300, 600);
    lombriz3.attachImage(Lombriz3);
    lombriz3.setName("lombrizCiega");
    mundo.add(lombriz3);
    
    
    
  }
  
}
