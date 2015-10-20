int textcounter;
PImage calavera;
PFont hackerfont;

void setup() {
   fullScreen();
  //size(1000,500);
  textcounter = 0;
  calavera = loadImage("calavera.png");
  hackerfont = createFont("C64_Pro_Mono-STYLE.ttf", 32); 
  background(0);
}
 
void draw() {
  //background(255);
 
  typewriteText("Bienvenido al dia de muertos de Pinata Softique", hackerfont, 20, color(49,255,50));
  
  
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