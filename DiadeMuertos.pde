int textcounter, stage;
PImage catrina, calavera, pinatadog;
PFont hackerfont;

void setup() {
  fullScreen();
  //size(1000,500);
  stage = 1; //starts in first screen
  textcounter = 0;
  catrina = loadImage("catrina8bit.png");
  pinatadog = loadImage("pinatadog.png");
  calavera = loadImage("calavera.png");
  hackerfont = createFont("C64_Pro_Mono-STYLE.ttf", 32); 
  background(0);
}
 
void draw() {
  //background(255);
  
  if(stage == 1){
    typewriteText("Bienvenido al dia de muertos de Pinata Software,\npresiona CUALQUIER TECLA para continuar...", hackerfont, 20, color(49,255,50));
    image(catrina, 0, height/6);
    
    if (keyPressed == true) {
      background(0);
      stage = 2;
      textcounter = 0;
    }
    
  }
  
  if(stage == 2){
    
    typewriteText("Haz llegado a HOME SCREEN!", hackerfont, 20, color(49,255,50));
    image(pinatadog, 0, height/6);
}
  
  //image(calavera, width/4, 0);
}


//it needs a global variable called textcounter initialized in 0
void typewriteText(String text, PFont font, int size, color col){
  if(textcounter < text.length()){
    textcounter++;
    fill(col);
    textFont(font, size);
    text(text.substring(0,textcounter),0,40,width,height);
    println(textcounter); 
  }
}