class barco{
int Posx, Posy;
color micolor;
int anclax, anclay;

barco(){
Posx=300;
Posy=235;
micolor= color(100);
anclax=Posx+240;
anclay=Posy-60;

}

void dibujar(){
//carga del barco
stroke(0);
fill(0,255,0);
rect(Posx+75,Posy-115, 100,40);// caja 1
rect(Posx+165,Posy-115, 100,40);// caja 2
rect(Posx+120,Posy-155, 100,40);

  
//cabina


fill(micolor);
rect(Posx-20,Posy-140,85,40);//base de la cabina
fill(micolor+140);
quad(Posx,Posy,Posx+200,Posy,Posx+265,Posy-74,Posx-40,Posy-74);// base del barco
fill(200,0,0);
quad(Posx-40,Posy-74,Posx-50,Posy-100,Posx+85,Posy-100,Posx+105,Posy-74);//base barco arriba
fill(40);
ellipse(Posx+18,Posy-190,11,18);//ellipse de humo 1
ellipse(Posx+30,Posy-200,18,11);//ellipse humo 2
ellipse(Posx+48,Posy-200,18,11);//ellipse humo 3
ellipse(Posx+66,Posy-200,18,11);//ellipse humo 4
fill(micolor+140);
rect(Posx+10,Posy-180,15,40);//tubo de humo 
ellipse(Posx-8,Posy-115,10,15);//ventanas de cabina
ellipse(Posx+20,Posy-115,10,15);//ventanas de cabina
ellipse(Posx+50,Posy-115,10,15);//ventanas de cabina
fill (micolor+20);
rect(Posx-30,Posy-150,105,15);//techo cabina



}

void mover(){
if (keyCode == LEFT ){
   Posx--;

}else if (keyCode == RIGHT ){
Posx++;

}


}





}
