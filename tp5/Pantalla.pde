class Pantalla {
int cant=2;
Pantalladeincio pantalladeincio;
Pantalla2 pantalla2;
Instrucciones instrucciones;

Pantalla(){

 pantalladeincio= new Pantalladeincio();
 pantalla2 = new Pantalla2 ();
 instrucciones = new Instrucciones();
}


void dibujar(){
  
 pantalladeincio.dibujar();
 if ( key == 'j'){
   pantalla2.dibujar();
  } //if (key == 'I'){
    // Instrucciones.dibujar();
   // if (key == 'C'){
     // Creditos.dibujar();
    //}
  }
 


}
