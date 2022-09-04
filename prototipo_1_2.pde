import fisica.*;
FWorld mundo;

Juego J;
FBox caja;
FBox caja1;
FBody body1, body2;
FPoly obstaculo;
FPoly obstaculo1;
FBox nido;
FBox avion;

float x = random(20, 80);
float y = random(200, 280);
float vx = -100;
float vy = 0;
Canion c;

String estado;
void setup() {
  size(1200, 700);
  Fisica.init(this);
  c= new Canion (50, height-80);
  J = new Juego();
  mundo = new FWorld();
  mundo.setEdges(color(0, 150, 255, 100));
  mundo.setGravity(x, y);
  estado = "Juego";



  obstaculo = new FPoly();
  obstaculo.setGrabbable(false);
  obstaculo.setFill(50);
  obstaculo.setPosition(200, 90);
  obstaculo.setStatic(true);
  obstaculo.vertex(140, 600);
  obstaculo.vertex(250, 300);
  obstaculo.vertex(340, 600);
  mundo.add(obstaculo);

  obstaculo1 = new FPoly();
  obstaculo1.setGrabbable(false);
  obstaculo1.setFill(50);
  obstaculo1.setPosition(550, 90);
  obstaculo1.setStatic(true);
  obstaculo1.vertex(140, 600);
  obstaculo1.vertex(250, 300);
  obstaculo1.vertex(340, 600);
  mundo.add(obstaculo1);

  nido = new FBox(100, 100);
  nido.setGrabbable(false);
  nido.setStatic(true);
  nido.setPosition(1100, 640);
  nido.setFill(106, 79, 5);
  nido.setName("nido");
  mundo.add(nido);


  avion = new FBox(100, 50);
  avion.setPosition(1200, random(150, 350));
  avion.setGrabbable(false);
  avion.setStatic(false);
  mundo.add(avion);
}

void draw() {
  println(x, y);
  avion.setVelocity(vx, vy);


  fill(0, 150, 255, 100);
  rect(0, 0, width, height);

  fill(138, 222, 72);
  rect(0, height-20, width, 50);

  c.responderATeclasEstado();


  mundo.step();
  mundo.draw();
  J.mostrarvidas();
  J.borrarBalas();
  J.perder();
  J.ganar();
  c.dibujar();
}

void keyPressed() {
  if ( key==' ' ) {
    c.disparar ( mundo );
  }
}
void mousePressed() {
  J.reiniciar();
}
