class Ballena{
PImage img;
//int cant=5;
int posx, posy;
//int direccion;
int tam;
//int velocidad;


   

Ballena(){
  img= loadImage("Ballena.png");
  tam= 40;
//  velocidad=round(random(2, 3));
 // direccion=  
  



}

void dibujar(){
  image(img, 150,100, tam, tam-110);
  //recorrido();


}






}
