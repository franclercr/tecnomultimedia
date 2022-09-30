class Oceano{

float time;// para linea del mar
PImage img;
int cant=100;
int cantpeces=120;
barco Barco;
peces [] Peces = new peces [cantpeces]; 
Pez_globo [] pez_globo = new Pez_globo [cant];
Cielo cielo;
  
 Oceano(){
    time =0;
   for(int i = 0; i<cantpeces;i++){
    Peces[i] = new peces();
    }
    for(int g = 0; g<cant;g++){
    pez_globo[g] = new Pez_globo();
    }
    Barco= new barco(); 
    cielo= new Cielo();
      
     
      
  }    
      
void dibujar(){

stroke(color (0,0,255));
float x = 0;
while (x < width) {
      line(x, 200 + 50 * noise(x / 100, time), x, height);
      x = x + 1;
      }
      time = time + 0.02; 
for(int i = 0; i<cantpeces;i++){
     Peces[i].dibujar();
 }
 
 for(int g = 0; g<cant;g++){
     pez_globo[g].dibujar();
 }
 

Barco.dibujar();
Barco.mover();
cielo.dibujar();

 }
}
