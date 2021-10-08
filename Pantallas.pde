void Creditos() {

  fill(255); 

  textSize(30);
  text("Create by", width/2, 200);
  textSize(20); 
  text("Tomás Actis", width/2, 230);
  text("(legajo:88329/1)", width/2, 250);


  textSize(28); 
  text("Tecnología Multimedia", width/2, 400);  

  text("Universidad Nacional de La Plata", width/2, 450);
  boton(10, 10, 100, 40);
  fill(255);
  text("Inicio", 55, 40);
}
void Introduccion() {
  if (frameCount > 0 && frameCount <339) { 
    float rojo = map(frameCount, 0, 160, 0, 255); 
    float verde = map(frameCount, 0, 160, 0, 10);
    float azul = map(frameCount, 0, 160, 0, 10);
    fill(rojo, verde, azul); 
    text("CASA TOMADA", width/2, height/2);
  }
  if (frameCount > 339 && frameCount <1500 ) { 
    textSize(15);
    float blanco = map(frameCount, 340, 800, 0, 255); 
    fill(blanco); 
    text(texto[lineas], width/2, 200);  
    float blanco1 = map(frameCount, 350, 820, 0, 255); 
    fill(blanco1);
    text(texto[lineas+1], width/2, 230); 
    float blanco2 = map(frameCount, 360, 840, 0, 255); 
    fill(blanco2);
    text(texto[lineas+2], width/2, 260); 
    float blanco3 = map(frameCount, 370, 860, 0, 255); 
    fill(blanco3);
    text(texto[lineas+3], width/2, 290);
    float blanco4 = map(frameCount, 380, 880, 0, 255); 
    fill(blanco4);
    text(texto[lineas+4], width/2, 320);
    float blanco5 = map(frameCount, 390, 900, 0, 255); 
    fill(blanco5);
    text(texto[lineas+5], width/2, 350);
  }
  if (frameCount > 1540 && frameCount <1780 ) { 
    float blanco = map(frameCount, 1540, 1740, 0, 255); 
    fill(blanco); 
    textSize(22);
    text("La historia cambiará según lo que elijas", width/2, height/2);
  }
} 
void Introduccion1() {
  image(foto[0], 0, 0);
  textAlign(CENTER); 
  boton(250, 240, 100, 40);
  fill(255);
  textSize(25);
  text("Abrir", 300, 270);
}
void Introduccion2() { 
  if (frameCount >= 0 && frameCount < 80) {
    image(foto[1], 0, 0);
  }
  if (frameCount >= 80 && frameCount < 160) {
    image(foto[2], 0, 0);
  }
  if (frameCount >= 160 && frameCount < 240) {
    image(foto[3], 0, 0);
  }
  if (frameCount >= 240 && frameCount < 320) {
    image(foto[4], 0, 0);
  }
}
void Personajes() {
  if (frameCount > 0 && frameCount < 120) {
    image(foto[5], 0, 0);
  }
  if (frameCount > 119 && frameCount < 240) {
    image(foto[6], 0, 0);
  }
  if (frameCount > 239 && frameCount < 480) {
    image(foto[7], 0, 0);
  }
  if (frameCount > 479 && frameCount < 600) {
    image(foto[8], 0, 0);
  }
  if (frameCount > 599 && frameCount < 720) {
    image(foto[9], 0, 0);
  }
  if (frameCount > 719 && frameCount < 1400) {
    image(protagonista, 0, 0);
    textSize(15); 
    textAlign(CENTER); 
    text("Alfredo e Irene viven solos en la casa, acordaron no traer a nadie. \n Alfredo quedó viudo a los 30 años antes de casarse, \n mientras que Irene rechazó 2 pretendientes sin motivo.\n Llegaron a pensar que se trata de un matrimonio de hermanos", 300, 50);
  }
  if (frameCount > 1399 && frameCount < 1900) {
    image(irene, 0, 0); 
    textSize(16); 
    textAlign(CENTER);
    text("Irene era una chica para no molestar a nadie. Se pasaba todo el dia \n tejiendo en su dormitorio. Alfredo los sábados va comprarle \n lana a Irene, y aprovecha para ir a la libreria a ver si \n había novedades sobre literatura francesa, \n desde 1939 no llegaba nada valioso a la Argentina", 300, 400);
  }
  if (frameCount > 1900) {
    estado = "Desarrollo";
  }
} 

void Desarrollo() {
  if (frameCount > 0);
  {
    image(limpiar[0], 0, 0); 
    boton(470, 430, 100, 40);
    boton(30, 430, 100, 40);
    fill(255);
    textSize(21);
    textAlign(CENTER); 
    text("Limpiar", 520, 460);
    text("No Limpiar", 80, 460);
    text("Irene te pidio que te pongas a limpiar las \n habitaciones ya que se hizo tarde", 300, 100);
  }
}
void Desarrollo1() {
  if (frameCount > 0 && frameCount < 120) {
    image(limpiar[1], 0, 0);
  }
  if (frameCount > 119 && frameCount < 240 ) {
    image(limpiar[2], 0, 0);
  }
  if (frameCount > 239 && frameCount < 360 ) {
    image(limpiar[3], 0, 0);
  }
  if (frameCount > 359 && frameCount < 480 ) {
    image(limpiar[4], -100, 0);
  }
  if (frameCount > 479 && frameCount < 600 ) {
    image(limpiar[5], -100, 0);
  }
  if (frameCount > 599 && frameCount < 720 ) {
    image(limpiar[6], -100, 0);
  }
  if (frameCount > 719 && frameCount < 840 ) {
    image(limpiar[7], -100, 0);
  }
  if (frameCount > 839) {
    image(sabado, 0, 0); 
    boton(470, 430, 100, 40);
    boton(30, 430, 100, 40);
    fill(255);
    text("Ir igual", 520, 460);
    text("No ir", 80, 460);
    text("Te acordaste que era sábado para ir \n a comprarle lana a Irene. \n Pero afuera esta apunto de llover", 300, 100);
  }
}
void Desarrollo2() { 
  image(ruidos[0], 0, 0);
  boton(470, 430, 100, 40);
  boton(30, 430, 100, 40); 
  fill(255);
  textSize(20); 
  text("Fijarse", 520, 460);
  text("Ignorarlos", 80, 460);
  text("Se escuchan ruidos extraños, parecen venir desde el pasillo", width/2, 100);
}
void Volver() {
  if (frameCount > 0 && frameCount < 200) {
    textSize(35); 
    text("Volviendo a casa..", width/2, height/2);
  }
  if (frameCount > 200 ) {
    estado = "Desarrollo2";
  }
}
void Bifurcacion1() {
  if (estado == "Bifurcacion1") {  
    image(lana, 0, 0); 

    boton1(90, 100, 60, 60); 
    boton2(width/2, 100, 60, 60); 
    boton3(480, 100, 60, 60); 

    fill(20);  
    rect(100, 225, 400, 50);
    fill(255); 
    textSize(35);
    text("Elige un color para Irene", width/2, 260);
  }
}
void Bifurcacion2() {
  if (frameCount > 0 && frameCount < 200) {
    image(mates1, -200, 0);
  }
  if (frameCount > 200) {
    estado = "Desarrollo2";
  }
}
void Bifurcacion3() {
  if (frameCount > 0 && frameCount < 120) {
    image(ruidos[1], 0, 0);
  }
  if (frameCount >119) {
    image(ruidos[2], -150, 0);
    boton(470, 430, 100, 40);
    boton(30, 430, 100, 40); 
    fill(255);
    textSize(22); 
    text("Cerrar", 520, 460);
    text("Abrir", 80, 460);
    text("Los ruidos vienen de la puerta de roble, \n casi nunca van para allá, podría ser un ladrón o un intruso. \n Sera mejor que la cierres con llave...", width/2, 100);
  }
}
void Bifurcacion4() {
  if (frameCount > 0 && frameCount < 200) {
    image(ignorar, 0, 0); 
    text("Los sonidos se volvieron insoportables, \n parecen venir desde la puerta de roble", width/2, 100);
  }
  if (frameCount > 200) {
    estado = "Bifurcacion3";
  }
}
void Bifurcacion5() {
  if (frameCount > 0 && frameCount < 120) {
    image(fijarse[0], 0, 0);
  }
  if (frameCount > 119 && frameCount < 240) {
    image(fijarse[1], 0, 0);
  }
  if (frameCount > 239 && frameCount < 360) {
    image(fijarse[2], 0, 0);
  }

  if (frameCount > 359 && frameCount < 600) {
    image(lamentacion, -150, 0);
    textSize(20); 
    text("Ambos se lamentan de las cosas que quedaron \n del otro lado de la casa, pero mirando el lado bueno \n ahora tendrán que limpiar menos y podrán levantarse mas tarde...", width/2, 400);
  }
  if (frameCount > 599 && frameCount < 850) {
    image(sed[0], -150, 0);
  }
  if (frameCount > 650 && frameCount < 970) {
    text("-Que sed, voy a buscar algo a la cocina", width/2, 100);
  }
  if (frameCount > 849 && frameCount < 970) {
    image(sed[1], -150, 0);
  }
  if (frameCount > 969 && frameCount < 1090) {
    image(sed[2], -0, 0);
  }
  if (frameCount > 1089 && frameCount < 1210) {
    image(sed[8], 0, 0);
  }
  if (frameCount > 1209 && frameCount < 1330) {
    image(sed[7], 0, 0);
  }
  if (frameCount > 1329 && frameCount < 1450) {
    image(sed[3], 0, 0);
  }
  if (frameCount > 1449 && frameCount < 1570) {
    image(sed[4], 0, 0);
  }
  if (frameCount > 1569 && frameCount < 1690) {
    image(sed[5], 0, 0);
  }
  if (frameCount > 1689) {
    image(sed[6], 0, 0);
    boton(470, 430, 100, 40);
    boton(30, 430, 100, 40); 
    fill(255);
    textSize(22); 
    text("Irte", 520, 460);
    text("Quedarte", 80, 460);
    textSize(20);
    text("LOS RUIDOS SON INTENSOS, ESTÁN POR TODAS PARTES! \n LOS INTRUSOS SE METIERON A ESTE LADO DE LA CASA!", width/2, 90);
  }
}
void Bifurcacion6() {
  if (frameCount > 0 && frameCount < 120) {
    image(fijarse[0], 0, 0);
  }
  if (frameCount > 119 && frameCount < 240) {
    image(fijarse[1], 0, 0);
  }
  if (frameCount > 239 && frameCount < 360) {
    image(fijarse[2], 0, 0);
  }
  if (frameCount > 360) {
    estado = "Final4";
  }
}
void Final1() {
  image(enojo, 0, 0);
  boton(470, 70, 100, 40);
  boton(30, 70, 100, 40);
  fill(255);
  textSize(21);
  textAlign(CENTER); 
  text("Hacerlo", 520, 100);
  text("Negarte", 80, 100);
  text("Tuviste una discusion con Irene y está \n muy enojada, será mejor que lo hagas...", 300, 400);
}

void Final2() {
  if (frameCount > 0 && frameCount < 200) {
    image(enojo1, 0, 0);
    text("Irene se enojó demasiado... \n fuiste hechado de la casa", width/2, height/2);
  }
  if (frameCount > 200 && frameCount < 600) {
    float blanco = map(frameCount, 200, 500, 0, 255); 
    fill(blanco);
    textSize(22);
    text("2 semanas después encuentran a \n Irene descuartizada en la casa", width/2, height/2);
  }
  if (frameCount > 600) {
    estado = "Creditos";
  }
}
void Final3() {
  if (frameCount >0 && frameCount< 80) {
    image(irte[0], 0, 0);
  }
  if (frameCount > 79 && frameCount< 160) {
    image(irte[1], 0, 0);
  }
  if (frameCount > 159 && frameCount< 240) {
    image(irte[2], 0, 0);
  }
  if (frameCount > 239 && frameCount<320) {
    image(irte[3], 0, 0);
  }
  if (frameCount > 319 && frameCount<400) {
    image(irte[4], 0, 0);
  }
  if (frameCount > 399 && frameCount<480) {
    image(irte[5], 0, 0);
  }
  if (frameCount > 479 && frameCount<560) {
    image(irte[6], 0, 0);
  }
  if (frameCount > 559 && frameCount<640) {
    image(irte[7], 0, 0);
  }
  if (frameCount > 639 && frameCount<720) {
    image(irte[8], 0, 0);
  }
  if (frameCount > 719 && frameCount<800) {
    image(irte[9], 0, 0);
  }
  if (frameCount > 799 && frameCount<880) {
    image(irte[10], 0, 0);
  }
  if (frameCount > 879 && frameCount<960) {
    image(irte[11], 0, 0);
  }
  if (frameCount > 650 && frameCount<1200) {
    textSize(60); 
    text("FIN", width/2, height/2);
  }
  if (frameCount > 1200) {
    estado = "Creditos";
  }
}
void Final4() {
  image(descubrir, -100, 0);   
  boton(260, 240, 100, 40);
  fill(0);
  textSize(25);
  text("Abrir", 310, 270);
}
void Intrusos() {
  if (frameCount >0 && frameCount <200) {
    image(intrusos, -100, 0);
  }
  if (frameCount >199 && frameCount <400) {
    image(sangre, 0, 0);
    textSize(50);
    float blanco = map(frameCount, 199, 350, 0, 255); 
    fill(blanco); 
    text("Estas muerto", width/2, height/2);
  }  
  if (frameCount >399 && frameCount <600) {
    estado = "Creditos";
  }
}
