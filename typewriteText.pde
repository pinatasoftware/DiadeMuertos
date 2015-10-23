//it needs a global variable called textcounter initialized in 0
void typewriteText(String text, PFont font, int size, color col){
  if(textcounter < text.length()){
    textcounter++;
    fill(col);
    textFont(font, size);
    text(text.substring(0,textcounter),0,40,width,height);
  }
}