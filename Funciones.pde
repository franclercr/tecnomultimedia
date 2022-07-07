

void Pantallainicio(int Posx, int Posy){
    
      background(200);
    if(mouseX > 340 && mouseX < 480 && 
    mouseY > 280 && mouseY < 380){
      fill(200,255,0);
    }else { fill(150);
  }
    
     background(0);
     
    
     textSize(50);
     
     text("Presionar\n para jugar", Posx-80, Posy-20);
     fill(255);
     textSize(20);
      text("40 segundos para llegar a la meta,\n y tienen que sobrar 20 segundos para ganar",Posx-150,Posy-150);
     
     
     
     
}





void Contornonivel(){
 
  paredes[0] = new Walls(290, 225, 25, 125, color(255,255,0), true);
  paredes[1] = new Walls(315, 225, 255, 25, color(255,255,0), true);
  paredes[2] = new Walls(545, 250, 25, 125, color(255,255,0), true);
  paredes[3] = new Walls(290, 350, 255, 25, color(255,255,0), true);
  
  paredes[4] = new Walls(315, 250, 200, 30, color(0), false);
  paredes[5] = new Walls(315, 280, 30, 70, color(0), false);
  paredes[6] = new Walls(345, 320, 200, 30, color(0), false);
  paredes[7] = new Walls(515, 250, 30, 70, color(0), false);
  
  paredes[8] = new Walls(260,195,30, 210, color(0), false);
  paredes[9] = new Walls(315,195,255, 30, color(0), false);
  paredes[10] = new Walls(570,195,30, 210, color(0), false);
  paredes[11] = new Walls(290,375,250, 30, color(0), false);
  
  paredes[12] = new Walls(0,60,30, 480, color(0), false);
  paredes[13] = new Walls(60,0,680, 30, color(0), false);
  paredes[14] = new Walls(770,60,30, 480, color(0), false);
  paredes[15] = new Walls(60,570,680, 30, color(0), false);
  
  paredes[16] = new Walls(60,60,30, 240, color(0), false);
  paredes[17] = new Walls(60,340,30, 200, color(0), false);
  
  paredes[18] = new Walls(710,60,30, 240, color(0), false);
  paredes[19] = new Walls(710,340,30, 200, color(0), false);
  
  paredes[20] = new Walls(90,60,620, 30, color(0), false);
  paredes[21] = new Walls(90,510,620, 30, color(0), false);
  
  paredes[22] = new Walls(650,120,30, 360, color(0), false);
  paredes[23] = new Walls(120,120,30, 360, color(0), false);
  
  paredes[24] = new Walls(180,120,470, 30, color(0), false);
  
  paredes[25] = new Walls(180,140,30, 280, color(0), false);
  paredes[26] = new Walls(150,450,470, 30, color(0), false);
  
  
  
  
  
  
}





void Perder(){
    background(0);
    
    for(int i = 0; i < botones.length; i++){
       botones[i].show(); 
    }
    
    fill(255);
    textSize(72);
    text("PERDISTE\n volvelo\n a intentar", 200, 290);
    
}

void Ganar(){
  background(0);
  
  for(int i = 0; i < botones.length; i++){
       botones[i].show(); 
    }
    
    fill(255);
    textSize(56);
    text("¡Enhorabuena!", 230, 290);
    text("Has ganado", 275, 350);
  

    
}


void juagador(){
 
    fill(255);
    rect(PosX, PosY, 15,15);


}

  
  
    class Button{
  
    int posX, posY, sizeX, sizeY;
    color fll;
    String texte;
  
    Button(){
      posX = 2;
      posY = 2;
      sizeX = 50;
      sizeY = 50;
      fll = color(255);
      texte = "Volver"; 
    }
    
    Button(int px, int py, int sx, int sy, color fl, String tx){
      posX = px;
      posY = py;
      sizeX = sx;
      sizeY = sy;
      fll = color(fl);
      texte = tx; 
    }
    
    void show(){
      
     fill(fll);
     rect(posX, posY, sizeX, sizeY, 3);
     fill(0);
     textSize(11);
     text(texte,posX+9,posY+30);
     this.clicker(); 
      
    }
     
   void clicker(){
  
     if(mousePressed){
      
        if(mouseX > posX && mouseX < posX+sizeX && mouseY > posY && mouseY < posY+sizeY){
           //Si se clicla, ponemos los boleanos en falso y reniciamos el tiempo (Empieza la partida de nuevo) 
           Perdiste = false;
           Ganaste = false;
           tiempo.setTime(millis());
        }
     }
       
   }   

    }
    
    class Time{
  
  int start, regresive, posX, posY, size, fll;
  int countM, countS, countMS;
  String countMs, countSs, countMSs;

   Time(){
       start = millis();
       regresive = 20000;
       posX = 50;
       posY = 50;
       size = 29;
       fll = 0;
   }
   
   Time(int st, int rg, int px, int py, int sz, color fl){
    
       start = st;
       regresive = rg;
       posX = px;
       posY = py;
       size = sz;
       fll = fl;
     
   }
   
 
   int getTime(){
       int timer = ((regresive-(millis()-start))/1000);
       return timer; 
    }
       
  
   void calcule(){
    
      countS = floor(((regresive-(millis()-start))/1000)%60);
      countSs = countS <= 9 ? "0"+ str(countS) : str(countS);  
      countM = floor(((regresive-(millis()-start))/1000)/60);
      countMs = countM <= 9 ? "0"+ str(countM) : str(countM);  
      countMS = floor(((regresive-(millis()-start))/10)%100);
   
      countMSs = countMS <= 9 ? "0"+ str(countMS) : str(countMS); 
     
      
      this.show(); 
    
    
    if((regresive-(millis()-start)) <= 0){ Perdiste = true; }
     
   }
 
   
   void show(){
 
     textSize(size);
     fill(fll);
     text(countMs+":"+countSs+":"+countMSs,posX, posY);
 
     
   }
   
  
   void setTime(int tm){
      start = tm; 
   }
  
}
class Walls{
  
   int posX, posY, sizeX, sizeY;
   color fil;
   int maxX, maxY;
   boolean bad;
   
    Walls(){
     
       posX = 0;
       posY = 0;
       sizeX = 0;
       sizeY = 0;
       fil = 0;
       bad = false;
     
    }
   
    Walls(int px, int py, int sx, int sy, color fl, boolean bd){
     
     posX = px;
     posY = py;
     sizeX = sx;
     sizeY = sy;
     fil = fl;
     bad = bd;
     
    } 
    
    void mostrar(){
     
     fill(fil);
     rect(posX, posY, sizeX, sizeY);
     this.cursor(); 
     
    }

    void cursor(){
     
      if((mouseX+10) > posX && (mouseX+10) < posX+sizeX && (mouseY+10) > posY && (mouseY+10) < posY+sizeY  ||
         (mouseX+10) > posX && (mouseX+10) < posX+sizeX && (mouseY-10) > posY && (mouseY-10) < posY+sizeY  ||
         (mouseX-10) > posX && (mouseX-10) < posX+sizeX && (mouseY-10) > posY && (mouseY-10) < posY+sizeY  ||
         (mouseX-10) > posX && (mouseX-10) < posX+sizeX && (mouseY+10) > posY && (mouseY+10) < posY+sizeY  
      ){
        
        //En el caso de haber pisado una pared...
        
        if(!bad){
        Perdiste = true; 
        }else{
            
            if(tiempo.getTime() >= 20){
            Ganaste = true; 
            }else{
            Perdiste = true; 
           
            }
            
        }
      }
      
    }
  
  
  
  
  
}
