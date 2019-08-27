int boxsize = 50;
int cols, rows;
color[][] colors;
color col = color(255,255,255); 
int s = 0;
//button
Button button; 
Button button1;
Button button2;
Button button3;
Button button4;
Button button5;
// splash screen
float curTime = 0;
float prevTime = 0;
float interval = 3000;
Boolean showSplashscreen = true;
PImage img1;
int w = 1000;
  int h = 1000;
  int x = 0;
  int y = 0;




void setup()
{  
  size(1000, 1000);
  
  // Grid using coloms and rows
cols = width/boxsize;
  rows = height/boxsize;
  colors = new color[cols][rows];

  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      colors[i][j] = color(255); // set each grid(rect) white
    }
  }
    //Buttons using colour and images imported from the buttom class
  button = new Button(1, 100, color(0, 0, 255), "bucketblue.png");
  button1 = new Button(1, 150, color(255, 0, 0), "bucket.red.png");
  button2 = new Button(1, 200, color(0, 0, 0), "bucket.black.png");
  button3 = new Button(1, 250, color(0, 255, 0), "bucket.green.png");
  button4 = new Button(0, 400, color(255, 255, 255), "strok.PNG");
  button5 = new Button(0, 300, color(255, 255, 255), "bucket.yellow.png");

}

void draw()
{
  //image load in
    PImage img1 = loadImage("title.png");
    
    // if statement using mouse coordinates and colors 
for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      int x = i*boxsize;
      int y = j*boxsize;
      if (mouseX > x && mouseX < (x + boxsize) && mouseY > y && mouseY < (y + boxsize)) {
        if (mousePressed && (mouseButton == LEFT)) {
          colors[i][j] = color(col);
        } else if (mousePressed && (mouseButton == RIGHT)) {
          colors[i][j] = color(255, 255, 255); // right click to "erase"
        }
      }
      
      fill(colors[i][j]);
      stroke (s); //stroke of rects 
      rect(x, y, boxsize, boxsize); 
    }
  }
// button class displays 
  button.update() ;
  button.display();
  button1.update() ;
  button1.display();
  button2.update() ;
  button2.display();
  button3.update() ;
  button3.display();
  button4.update() ;
  button4.display();
 button5.update() ;
  button5.display();
  
  // if statements by clicking and making true/1 changing the current color 
  if (button.clicked == true) 
  {
   col = color(0, 0, 255);
  }

  if (button1.clicked == true) 
  {
       col = color(255,0,0);
  }
  if (button2.clicked == true) 
  {
   col = color(0, 0, 0);
  }
  if (button3.clicked == true) 
  {
   col = color(0,255,0);
  }
    if (button4.clicked == true) 
  {
   s = color(255,255,255);
  }
 if (button4.clicked == false)
 s = color(0,0,0);
 
if (button5.clicked == true) 
  {
   col = color(244, 232, 104);
   
   
}
// splash screen using iamges and time

if(showSplashscreen == true) {
image(img1,0,0);
  }
curTime = millis();
  if (showSplashscreen == true){
  if ((curTime - prevTime) > interval) {
    println("tick");
   // prevTime = curTime;
   showSplashscreen = false; 
tint(255,255);
image(img1,50,0);


  }
}
}
