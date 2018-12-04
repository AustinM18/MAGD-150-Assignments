void setup() {
  size(400, 350);
  background(48, 48, 48); 
}

void draw() {
  //Main Planet
  noStroke();
  fill(192, 192, 192);
  ellipse(75, 350, 450, 200);
 
  //Small craters on planet
  stroke(0,0,0);
  strokeWeight(3);
  noFill();
  ellipse(20, 300, 30, 20);
  ellipse(75, 270, 15, 10);
  ellipse(130, 330, 23, 15);
  ellipse(224, 300, 25, 20);
  ellipse(160, 280, 18, 13);
  
  //Body of rocket ship
  fill(100,100,100);
  noStroke();
  rect(320, 170, 40, 60, 12, 12, 12, 12);
  
  //Landing pads of rocket ship
  stroke(0, 0, 0);
  line(324, 229, 315, 250);
  line(324, 229, 328, 250);
  line(355, 229, 350, 250);
  line(355, 229, 363, 250);
  
  //Window of rocket ship
  stroke(0,0,0);
  fill(255,255,255);
  ellipse(340, 201, 28, 42);
  
  //Flag on the moon
  rectMode(CORNER);
  noStroke();
  fill(100, 100, 100);
  rect(70, 180, 13, 70);
  fill(80, 80, 80);
  rect(70, 180, 50, 27);
  
  //Stars in space
  stroke(240, 240, 240);
  strokeWeight(8);
  point(50, 50);
  point(154, 104);
  point(350, 39);
  point(300, 80);
  strokeWeight(6);
  point(35, 98);
  point(100, 80);
  point(200, 40);
  point(230, 100);
  strokeWeight(4);
  point(150, 30);
  point(15, 15);
  point(250, 175);
  point(93, 135);
  point(185, 190); 
}
