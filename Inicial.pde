
class Inicial{
 
  Fondo f;
  Perro p;
Inicial(){
  p = new Perro();
  f= new Fondo ();
}
void dibujar (){
    f.moverFondo(keyCode);
  f.dibujarFondo();
    p.dibujarperro();
    p.moverperro (keyCode);
    p.dibujarcomida();
    p.movercomida(keyCode);
    println (p.comer);
}

}
