class Paleta {
  PImage imagen;
  Paleta(String nombreArchivo) {
    imagen = loadImage(nombreArchivo);
  }
  color darColor(){
    int x = int(random(imagen.width));
     int y = int(random(imagen.height));
    return imagen.get(x,y);
}
}
