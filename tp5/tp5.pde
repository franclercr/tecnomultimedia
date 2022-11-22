Juego juego;

void setup(){
size(700,700);
juego= new Juego();

}


void draw(){
background(200);
juego.dibujar();
}



void keyPressed(){
  juego.dibujar();

}
