class Isla{
PImage img; // imagen isla
PImage img2;
int posx,posy; //posiciones en x e y de la ISLA
int Posx, Posy; // posiciones en x e y de la meta

Isla(){
  posx= 150;
  posy=150;
  Posx=0;
  Posy= 600;
img= loadImage("ISLA.png"); // imagen isla
img2= loadImage("meta.png"); //imagen meta


}

void dibujar(){
image(img,-10,-10,posx, posy); // imagen isla
image(img2,550,550,posx, posy); // imagen meta

}

}
