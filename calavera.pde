float period, amplitude;
PImage calavera;
PFont hackerfont;

void setup() {
   fullScreen();
   //size(500,500);
    period = 500;
    amplitude = 100;
    calavera = loadImage("calavera.png");
    hackerfont = createFont("C64_Pro_Mono-STYLE.ttf", 32);    
}
 
void draw() {
  //background(255);
 
  float waveValue = amplitude * cos(TWO_PI * frameCount / period);
  int backgroundValue = round(map(waveValue, -100,100,35,0));
  background(backgroundValue);
  
  image(calavera, width/4, 0);
  
  textFont(hackerfont);
  textAlign(CENTER, BOTTOM);
  fill(94,255,4);
  text("Demo de letras", width/2, height/2);
  
  

  
}