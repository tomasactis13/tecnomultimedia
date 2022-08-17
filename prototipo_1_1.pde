import fisica.*;
FWorld mundo;
Juego J;
FBox caja;
FBox caja1;
FPoly obstaculo;
FPoly obstaculo1;
FPoly cajita;
//FCircle bala;
Canion c;
String estado;
void setup() {
  size(1200, 700);
  Fisica.init(this);
  c= new Canion (50, height-80);
  J = new Juego(); 
  mundo = new FWorld();
  mundo.setEdges();
  mundo.setGravity(10, 200);
  estado = "perder";
  caja = new FBox(130, 15);
  caja.setFill(255, 255, 0);
  caja.setPosition(width/2, height/2);
  caja.setStatic(true);
  caja.setRestitution(2);
  mundo.add(caja);


  obstaculo = new FPoly();
  obstaculo.setGrabbable(false);
  obstaculo.setFill(50);
  obstaculo.setPosition(200, 95);
  obstaculo.setStatic(true);
  obstaculo.vertex(140, 600);
  obstaculo.vertex(250, 300);
  obstaculo.vertex(340, 600);
  mundo.add(obstaculo);

  obstaculo1 = new FPoly();
  obstaculo1.setGrabbable(false);
  obstaculo1.setFill(50);
  obstaculo1.setPosition(550, 95);
  obstaculo1.setStatic(true);
  obstaculo1.vertex(140, 600);
  obstaculo1.vertex(250, 300);
  obstaculo1.vertex(340, 600);
  mundo.add(obstaculo1);

  cajita = new FPoly();
  cajita.setGrabbable(false);
  cajita.setStatic(true);
  cajita.setPosition(900, 94);
  cajita.setFill(0, 255, 70);
  cajita.vertex(140, 500);
  cajita.vertex(140, 600);
  cajita.vertex(140, 600);
  cajita.vertex(240, 600);
  cajita.vertex(240, 500);
  mundo.add(cajita);
}

void draw() {
  fill(0, 150, 255, 100);
  rect(0, 0, width, height);
  c.responderATeclasEstado();


  mundo.step();
  mundo.draw();
  J.mostrarvidas();

  c.dibujar();
  J.borrarBalas();
  J.perder();
  ArrayList <FBody> cuerpos = mundo.getBodies();
  println(estado);
}

void keyPressed() {
  if ( key==' ' ) {
    c.disparar ( mundo );
  }
}
