class Oceano{
float time;
Isla isla;

Oceano() {
 time =0;

}

void dibujar(){

stroke(color (0,0,260));// linea mar 1
float a = 0;
while (a < width) {
      line(a, -40 + 50 * noise(a / 100, time), a, height);
      a = a + 1;
      }
      time = time + 0.02;
      
      stroke(color (0,0,235));//linea mar 2
float b = 0;
while (b < width) {
      line(b, 130 + 50 * noise(b / 100, time), b, height);
      b = b + 1;
      }
      time = time + 0.02;
      
      
 stroke(color (0,0,200));//linea mar 3
float c = 0;
while (c < width) {
      line(c, 140 + 50 * noise(c / 100, time),c, height);
      c = c + 1;
      }
      time = time + 0.02;   
     
    
      
           stroke(color (0,0,235));//linea mar 6
   float f  = 0;
while (f < width) {
      line(f, 490 + 50 * noise(f / 100, time),f, height);
      f = f + 1;
      }
      time = time + 0.02; 
      
           stroke(color (0,0,255));//linea mar 7
   float g  = 0;
while (g < width) {
      line(g, 470 + 50 * noise(g / 100, time),g, height);
      g = g + 1;
      }
      time = time + 0.02;
      
          stroke(color (0,0,235));//linea mar 8
   
   float h  = 0;
while (h < width) {
      line(h, 520 + 50 * noise(h / 100, time),h, height);
      h = h + 1;
      }
      time = time + 0.02; 
      
      stroke(color (0,0,270));//linea mar 9
  float i  = 0; 
 while (i < width) {
      line(i, 570 + 50 * noise(i / 100, time),i, height);
      i = i + 1;
      }
      time = time + 0.02; 
      
}
}
