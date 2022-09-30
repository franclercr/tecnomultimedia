class peces{
  int tam;
 color micolor;
  int posx, posy;
  int dir;
 

  
peces(){

  tam =40;
  posx=round(random(200, width+3500));
  posy=round(random(270, height-200));
  
  micolor = color(random(155, 0), random(100, 255), random(0, 255));
  dir = floor(random(0, 4));





}


void dibujar(){
 
fill(micolor);
triangle(posx+10,posy,posx+27,posy-10, posx+27,posy+10);
ellipse(posx,posy,tam,tam-25);
ellipse(posx+2,posy+2,11,5);

fill(255);
ellipse(posx-13,posy-1,6,3);
avance();



}


void avance(){
posx--;
}



  
  



   
}
