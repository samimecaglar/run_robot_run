float a;
float b;
int w = 120;
int h = 60;
boolean started = false;

float x;
float y;
float dx = 1;
float dy = 1;

float accx = 0.5;
float accy = 0.8;

void setup () {

  size(800,600);
  
  x = width*0.5;
  y = height *0.5;

}

void draw () {

background (#F5DB7C);
noStroke();

a = width*0.5 - w*0.5;
b = height*0.5 - h*0.5;

if(started == true) {
  background(#FFFFFF);
}else{
  background(#F5DB7C);
}

fill(#FFFFFF);
rect(a,b,w,h);
fill(0);
textSize(50);
text("start",a + w*0.05,b + h*0.7);

if(started == false) {
  fill(#FFFFFF);
  rect(a,b,w,h);
  fill(0);
  textSize(50);
  text("start",a + w*0.05,b + h*0.7);
  }else{
  fill(#FFFFFF);
  rect(a,b,w,h);
  
  if(started == false) {
   x = x+accx*dx;
  y = y +accy*dy;

  if (x > width || x < 0)
  {
    accx = random(0.1,5);
    dx = dx*-1;
  }

  if ( y > height || y < 0) {
    accy = random(0.1,5);
    dy = dy*-1;
  }


  fill(0);
  noStroke();
  ellipse(x, y, 30, 30);
}else{
   x = x+accx*dx;
  y = y +accy*dy;

  if (x > width || x < 0)
  {
    accx = random(0.1,5);
    dx = dx*-1;
  }

  if ( y > height || y < 0) {
    accy = random(0.1,5);
    dy = dy*-1;
  }


  fill(#2500FF);
  noStroke();
  ellipse(x, y, 30, 30);
}
  
  pushMatrix();
  translate(mouseX-160,mouseY-240);

 //start custom shape
  beginShape();
  vertex(110,180); //first vertex point of create
  vertex(210,180);
  vertex(210,250);
  vertex(110,250);
  endShape(CLOSE); // CLOSE shape stroke
  
  fill(#000000);

//start custom shape
  beginShape();
  vertex(120,190); //first vertex point of create
  vertex(150,190);
  vertex(150,200);
  vertex(170,200);
  vertex(170,190);
  vertex(200,190);
  vertex(200,220);
  vertex(180,220);
  vertex(180,230);
  vertex(170,230);
  vertex(170,240);
  vertex(150,240);
  vertex(150,230);
  vertex(140,230);
  vertex(140,220);
  vertex(120,220);
  endShape(CLOSE); // CLOSE shape stroke
  
  fill(255);
  
  //start custom shape
  beginShape();
  vertex(110,200); //first vertex point of create
  vertex(110,220);
  vertex(70,220);
  vertex(70,200);
  endShape(CLOSE); // CLOSE shape stroke
  

 //start custom shape
  beginShape();
  vertex(250,200); //first vertex point of create
  vertex(250,220);
  vertex(210,220);
  vertex(210,200);
  endShape(CLOSE); // CLOSE shape stroke
  
  fill(#000000);
  
  //start custom shape
  arc(50,200,80,80,0,PI,CLOSE);
  arc(270,200,80,80,0,PI,CLOSE);
  
  fill(#000000);
  
  //start custom shape
  beginShape();
  vertex(190,250); //first vertex point of create
  vertex(190,370);
  vertex(170,370);
  vertex(170,250);
  endShape(CLOSE); // CLOSE shape stroke
  
  //start custom shape
  beginShape();
  vertex(150,250); //first vertex point of create
  vertex(150,370);
  vertex(130,370);
  vertex(130,250);
  endShape(CLOSE); // CLOSE shape stroke
  
    //start custom shape
  arc(110,370,80,80,0,PI,CLOSE);
  arc(210,370,80,80,0,PI,CLOSE);
  
  //start custom shape
  beginShape();
  vertex(230,270); //first vertex point of create
  vertex(160,310);
  vertex(90,270);
  endShape(CLOSE); // CLOSE shape stroke
  
  fill(#19B42A);
  
  //start custom shape
  beginShape();
  vertex(170,160); //first vertex point of create
  vertex(170,180);
  vertex(150,180);
  vertex(150,160);
  endShape(CLOSE); // CLOSE shape stroke
  
  //start custom shape
  beginShape();
  vertex(250,40); //first vertex point of create
  vertex(250,160);
  vertex(70,160);
  vertex(70,40);
  endShape(CLOSE); // CLOSE shape stroke
  
  //start custom shape
  beginShape();
  vertex(230,50); //first vertex point of create
  vertex(230,70);
  vertex(190,70);
  vertex(190,50);
  endShape(CLOSE); // CLOSE shape stroke
  
  //start custom shape
  beginShape();
  vertex(130,50); //first vertex point of create
  vertex(130,70);
  vertex(90,70);
  vertex(90,50);
  endShape(CLOSE); // CLOSE shape stroke
  
  fill(#FF0000);
  
  //start custom shape
  beginShape();
  vertex(210,130); //first vertex point of create
  vertex(210,150);
  vertex(110,150);
  vertex(110,130);
  endShape(CLOSE); // CLOSE shape stroke
  popMatrix();

}
 
 
 
}

void mouseClicked () {

if(mouseY > b && mouseY < b + h && mouseX > a && mouseX < a + w) {
  started = true;
}else{
  started = false;
 }

}