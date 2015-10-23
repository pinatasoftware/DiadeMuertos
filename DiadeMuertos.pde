import twitter4j.conf.*;
import twitter4j.*;
import twitter4j.auth.*;
import twitter4j.api.*;
import java.util.*;


List<Status> tweets;
Twitter twitter;
int textcounter, stage, currentTweet;
String searchString = "backtothefuture"; //hashtag to query
PImage catrina, calavera, pinata8bit;
PFont hackerfont;


void setup() {
  fullScreen();
  //size(1000,500);
  
  ConfigurationBuilder cb = new ConfigurationBuilder();
  cb.setOAuthConsumerKey("");
  cb.setOAuthConsumerSecret("");
  cb.setOAuthAccessToken("");
  cb.setOAuthAccessTokenSecret("");

  TwitterFactory tf = new TwitterFactory(cb.build());

  twitter = tf.getInstance();

  getNewTweets();

  currentTweet = 0;
  
  thread("refreshTweets");
  
  stage = 1; //starts in first screen
  textcounter = 0;
  catrina = loadImage("catrina8bit.png");
  pinata8bit = loadImage("pinata8bit.png");
  calavera = loadImage("calavera.png");
  hackerfont = createFont("C64_Pro_Mono-STYLE.ttf", 32); 
  background(0);
  imageMode(CENTER);
}
 
void draw() {
  //background(255);
  
  //println("stage = " + stage); 
  
  if(stage == 1){
    typewriteText("Bienvenido al dia de muertos de Pinata Software,\npresiona CUALQUIER TECLA para continuar...", hackerfont, 20, color(49,255,50));
    image(catrina, width/2, height/2);
  }
  
  if(stage == 2){
    typewriteText("Sube tu foto con el hashtag #HACKCUU a twitter y observa lo que pasa \ncon tu fotografia!", hackerfont, 20, color(49,255,50));
    image(pinata8bit,width/2, height/2);     
  }
  
  if(stage == 3){
    fill(0, 30);
    rect(0, 0, width, height);

    currentTweet = currentTweet + 1;

    if (currentTweet >= tweets.size())
    {
        currentTweet = 0;
    }

    Status status = tweets.get(currentTweet);

    fill(200);
    text(status.getText(), random(width), random(height), 300, 200);

    delay(250);
  }

  //image(calavera, width/4, 0);
}