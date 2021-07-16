int cant = 90; 
int value; 

void setup(){
  size(600,600);
   surface.setResizable(true);

}
void draw(){
  background(15);
   
  for(int t=0; t< cant; t++){ 
    float tam = map(t,10, cant-1 ,475, 15); 
    float movx = map (t,10, cant-1,  mouseX,height/2 );  
    float movy = map (t,10, cant-1, mouseY, height/2);
    float grosor = map(t,10,cant-1,5,3);
    strokeWeight(grosor);
    float tono = map (t,0, cant-1, 10, 100); 
    if (t%10==0){
      stroke(240,0,200, tono);
      println(mouseX,mouseY); 
    }  else {
      noFill();
        
    }
      rectMode(CENTER); 
    rect(movx, movy, tam, tam); 
  }
   
    }
void keyPressed (){
   if(value<300 || value>300) 
   value=height/2;
mouseY = value;
mouseX = value;
 }
