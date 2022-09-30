class Cielo{
int tam1, tam2;
int micolor1, micolor2;
int dir;
int posx, posy;// sol
int Posx, Posy;// nubes



Cielo(){
 
tam1=20;
micolor1= (255);
tam2=30;//sol
micolor2= color (255,255,0);//sol
posx= 60;
posy= 60;
Posx=200;
Posy=40;



}
void dibujar(){
//sol
 fill(micolor2);
ellipse(posx,posy,tam2,tam2);
line(posx+60,posy,posx+20,posy);
line(posx,posy+60,posx,posy+20);
line(posx+15,posy+15,posx+30,posy+30);
line(posx,posy-20,posx,posy-50);
line(posx+15,posy-15,posx+30,posy-30);
line(posx-20,posy,posx-50,posy);
line(posx-15,posy-15,posx-30,posy-30);
line(posx-15,posy+15,posx-30,posy+30);




}




}
