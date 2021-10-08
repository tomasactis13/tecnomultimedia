PImage portada,protagonista,irene,enojo,enojo1,sabado,lana,mates1,lamentacion,descubrir,intrusos,sangre,ignorar;
PImage [] limpiar = new PImage[8];
PImage [] foto = new PImage[10]; 
PImage [] ruidos = new PImage[5];
PImage [] sed = new PImage[9];
PImage [] irte = new PImage[12];
PImage [] fijarse = new PImage[3];
PFont fuente1;
int texto1,texto2,col1,col2,col3,col4,col5,col6;  
String estado; 
String [] texto;
int lineas; 
void setup(){
  size(600,500);
  texto = loadStrings("texto.txt"); 
  col1 = 255; 
  col2 = 255; 
  col3 = 255; 
  col4 = 255; 
  col5 = 255; 
  col6 = 255; 
  portada = loadImage("portada.jpg"); 
  portada.resize(640,540); 
  protagonista = loadImage("protagonista.png");
  protagonista.resize(1000,540);
  irene = loadImage("irene.png");
  irene.resize(1000,540);
for(int f=0; f<foto.length; f++){
foto[f] = loadImage("foto"+f+".png"); 
foto[f].resize(1000,540);
}
for(int l=0; l<ruidos.length; l++){
ruidos[l] = loadImage("ruidos"+l+".png"); 
ruidos[l].resize(950,540);
}
for(int l=0;l<limpiar.length; l++){
limpiar[l] = loadImage("limpiar"+l+".png"); 
limpiar[l].resize(1000,540);
}
for(int i=0;i<irte.length; i++){
irte[i] = loadImage("irte"+i+".png"); 
irte[i].resize(850,500);
}
for(int s=0;s<sed.length; s++){
sed[s] = loadImage("sed"+s+".png"); 
sed[s].resize(850,500);
}
for(int f=0; f<fijarse.length; f++){
fijarse[f] = loadImage("fijarse"+f+".png"); 
fijarse[f].resize(1000,540);
}
 enojo = loadImage("enojo.png");
 enojo.resize(1000,540);
 enojo1 = loadImage("enojo1.png");
 enojo1.resize(1000,540);
 sabado = loadImage("sabado.png"); 
 sabado.resize(1000,540); 
 lana = loadImage("lana.jpg"); 
lana.resize(1000,540); 
mates1 = loadImage("mates1.png");
mates1.resize(1000,540);
lamentacion = loadImage("lamentacion.png");
lamentacion.resize(1000,540);
descubrir = loadImage("descubrir.png");
descubrir.resize(850,500);
estado = "Titulo";
intrusos = loadImage("intrusos.jpg"); 
intrusos.resize(850,500);
sangre = loadImage("sangre.png"); 
sangre.resize(850,500);
ignorar = loadImage("ignorar.png");
ignorar.resize(850,500);
textAlign(CENTER);
 fuente1 = createFont("CASA TOMADA.ttf",32); 
}

void draw(){
   background(0);
   println(mouseX,mouseY);  
    println(frameCount);
     println(estado);
 if(estado.equals("Titulo")){ 
   image(portada,-20,-20);
     textFont(fuente1,35);
   
fill(col1,col2,col3); 
  text("Comenzar",490,180); 
  fill(col4,col5,col6);
  text("Creditos",490,250);
  if(mouseX>=415 && mouseX<556 && mouseY>=155 && mouseY<180){
    col1 = 232; 
    col2 = 202;
    col3 = 80;
   }else{
  col1 = 255; 
  col2 = 255;
  col3 = 255;
  }
  if(mouseX>=430 && mouseX<545 && mouseY>=223 && mouseY<250){
    col4 = 232; 
    col5 = 202;
    col6 = 80; 
  }else{
    
  col4 = 255;
  col5 = 255;
  col6 = 255;
  }
 } if(estado.equals("Introduccion")){
  Introduccion(); 
} if(estado.equals("Introduccion1")){
  Introduccion1();
} if(estado.equals("Creditos")){
  Creditos(); 
} if(estado.equals("Introduccion2")){
  Introduccion2(); 
} if(estado.equals("Personajes")){
 Personajes();
} if(estado.equals("Desarrollo")){
  Desarrollo();
} if(estado.equals("Desarrollo1")){
  Desarrollo1();
} if(estado.equals("Desarrollo2")){
  Desarrollo2(); 
} if(estado.equals("Bifurcacion1")){
  Bifurcacion1();
} if(estado.equals("Bifurcacion2")){
  Bifurcacion2();
}  if(estado.equals("Bifurcacion3")){
  Bifurcacion3();
} if(estado.equals("Bifurcacion4")){
  Bifurcacion4();
}  if(estado.equals("Bifurcacion5")){
  Bifurcacion5();
  }  if(estado.equals("Bifurcacion6")){
  Bifurcacion6();
} if(estado.equals("Final1")){
  Final1();
} if(estado.equals("Final2")){
  Final2();
} if(estado.equals("Final3")){
  Final3();
} if(estado.equals("Final4")){
  Final4();
} if(estado.equals("Intrusos")){
  Intrusos();
  } if(estado.equals("Volver")){
  Volver();
   
}
  if(frameCount >= 1800 && estado.equals("Introduccion")){
    estado = "Introduccion1";
  }
    if(frameCount > 400 && estado.equals("Introduccion2")){
      estado = "Personajes";
       frameCount = 0;
    }
}
    
  
    
   






 

 
