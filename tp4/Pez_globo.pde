class Pez_globo{
  int tam;
  color micolor;
  int posx, posy;
  int dir;
  boolean Inflado;


Pez_globo(){
  tam =40;
  posx=round(random(-4510, width));
  posy=round(random(470, height-10));
  
  micolor = color (255,0,0);
  dir = floor(random(0, 4));
  Inflado= false;
  
}

void dibujar(){

fill(micolor);

if (dist(mouseX, mouseY, posx, posy) < tam){
 Inflado=true;
 ellipse(posx-15,posy+2,25,20);
 ellipse(posx,posy,tam,tam-80);
 }else{
Inflado= false;
ellipse(posx-15,posy+2,25,11);
ellipse(posx,posy,tam,tam-20);
ellipse(posx-2,posy+2,11,5);

fill(255);
ellipse(posx+10,posy-1,6,3);
  
recorrido();
} 
}




void recorrido(){
posx++;
}








}
 
 
