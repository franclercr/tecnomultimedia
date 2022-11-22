class Pantalla1{

Pantalla2 pantalla2;
Oceano oceano;
int posxtitulo, posytitulo; //posicion en x y en y del titulo
int posx, posy;
boolean botonactivo= false;


//constructor
Pantalla1(){
oceano = new Oceano();
pantalla2= new Pantalla2();
posxtitulo= 100;
posytitulo= 140;

posx= 200;
posy=300;

}


void dibujar(){
oceano.dibujar();
fill(200,250,0);
textSize(100);
text("Naufragio",posxtitulo,posytitulo);
fill(0,200,100);
textSize(30);
text("Presiona J para inicar",posx,posy);
text("Presiona I para saber Instrucciones",posx-100,posy+70);
text("Presiona c para creditos",posx-10,posy+140);

}



 



}
