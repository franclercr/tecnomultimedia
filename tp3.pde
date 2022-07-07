//video pedido en consigna : 
//https://www.youtube.com/watch?v=DjZt6-cgPgM


int pantalla = 1;
PFont letra;
Walls[] paredes = new Walls[27]; 
Button[] botones = new Button[2]; 
Time tiempo;
boolean Perdiste= false; 
boolean Ganaste = false; 
int PosX =158; 
int PosY= 280; 
int PosCuadrado; 
int Distraccion = millis()+2000; 




void setup(){
  size(800,600); //Establecemos el tamaño de la ventana
  textSize(50);
  letra= loadFont("SnapITC-Regular-48.vlw");
  textFont(letra);
  
 
  botones[0] = new Button();
  botones[1] = new Button(2,548,50,50,255,"Volver");
 
  tiempo = new Time(millis(), 40000, (width/2)-(35),(height/2)+(10), 29, 0);
 
 
  
  
}

void draw(){
   background(200);
  if (pantalla == 1) {
      Pantallainicio(350,300);} else if (pantalla == 2) {
           Contornonivel();
  if(Perdiste){
   Perder();  
  }else if(Ganaste){
     Ganar(); 
  }else{
    
   
    background(25);
    
   
    if(Distraccion < millis()){
       PosCuadrado = (int)random(1,5); 
       Distraccion = Distraccion + 1000;  
    }
    
    //Calculamos la X e Y nuevos dependiendo de Distraccion;
     switch(PosCuadrado){
      
        case 1: 
           PosX = 100;
           PosY = 260;
           break;
           
        case 2: 
           PosX = 690;
           PosY = 100;
           break;
        
        case 3:
            PosX = 630;
            PosY = 490;
            break;
        
        case 4:
            PosX = 410;
            PosY = 100;
            break;
       
     }
    
      // Calculamos la posición del Mouse para saber si está encima del cuadrado
      if((mouseX+10) > PosX && (mouseX+10) < PosX+15 && (mouseY+10) > PosY && (mouseY+10) < PosY+15  ||
         (mouseX+10) > PosX && (mouseX+10) < PosX+15 && (mouseY-10) > PosY && (mouseY-10) < PosY+15  ||
         (mouseX-10) > PosX && (mouseX-10) < PosX+15 && (mouseY-10) > PosY && (mouseY-10) < PosY+15  ||
         (mouseX-10) > PosX && (mouseX-10) < PosX+15 && (mouseY+10) > PosY && (mouseY+10) < PosY+15  
      ){
        
        
        tiempo.setTime(millis());
        
      }
   
   juagador();
    
   
    fill(255,0,0);
    noStroke();
    rect(mouseX-10, mouseY-10, 20, 20,4);
    
    
    fill(255);
    rect(335,269,200,50);
    tiempo.calcule();
    
   
   
    for(int i = 0; i < paredes.length; i++){
    paredes[i].mostrar();
    }
    
    
   
  }
      
}

    
}
 
  
void mouseClicked() {
  if (pantalla == 1) {
    if(mouseX > 340 && mouseX < 480 && 
    mouseY > 280 && mouseY < 380) {
      pantalla++;
    }
  } else if (pantalla == 2) {
    if (dist(mouseX, mouseY, 100, 100) < 25) {
      pantalla++;
    }
  } 
}




    
   

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  





 
