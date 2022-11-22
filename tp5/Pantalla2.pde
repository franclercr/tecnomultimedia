class Pantalla2{

  int cant=20;
Oceano oceano;
Isla isla;
Ballena ballena;



Pantalla2(){

oceano = new Oceano();
isla= new Isla();
ballena= new Ballena();

}

void dibujar(){

 oceano.dibujar();
 isla.dibujar();
 ballena.dibujar();
 }
 
 

}
