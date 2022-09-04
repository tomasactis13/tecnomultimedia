String conseguirNombre(FBody cuerpo){
  String nombre = "nada";
  if(cuerpo !=null)
  {
    nombre = cuerpo.getName();
    if(nombre == null){
      nombre = "nada";
    }
  }
  return nombre; 
}
void contactPersisted( FContact contacto ) {
  FBody body1 = contacto.getBody1();
  FBody body2 = contacto.getBody2();
  if (body1.getName() != null && body2.getName() != null) {

    println("body1:" + body1.getName());
    println("body2:" + body2.getName());
  }
  String nombre1 = conseguirNombre(body1); 
  String nombre2 = conseguirNombre(body2);
  if (nombre1 == "paloma" && nombre2 == "nido") {
   mundo.remove(body1);
    estado = "ganar";
  }
  if (nombre2 == "paloma" && nombre1 == "nido") {
    estado = "ganar";
    mundo.remove(body2);
  }
}
