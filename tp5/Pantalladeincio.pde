class Pantalladeincio{


Oceano oceano;
int posxtitulo, posytitulo; //posicion en x y en y del titulo
int posx, posy;
boolean pantallaActiva= false;
Pantalla2 pantalla2;


//constructor
Pantalladeincio(){

oceano = new Oceano();
pantalla2 = new Pantalla2 ();
posxtitulo= 100;
posytitulo= 140;

posx= 130;
posy=300;

}


void dibujar(){

oceano.dibujar();
fill(200,250,0);
textSize(100);
text("Naufragio",posxtitulo,posytitulo);
fill(0,200,100);
textSize(30);
text("Presiona j para jugar",posx,posy);
text("Presiona I para las Instrucciones",posx-10,posy+70);
text("Presiona c pata los creditos",posx-10,posy+140);

}






}
