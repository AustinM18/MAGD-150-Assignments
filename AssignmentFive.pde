
Rain[] r = new Rain[150];  //create variable r that is an array of 150 drops

void setup(){
  size(500, 400);
  
  for (int i = 0; i < r.length; i++) {  //make a for loop so we can have a lot of rain drops
  r[i] = new Rain(); }
}


void draw() {
  background(186, 255, 255);  
  
  for (int i = 0; i < r.length; i++) {  //another for loop that calls the two functions from the rain class for each drop
  r[i].fallingRain();
  r[i].showRain(); }
  
  clouds();  //calls the cloud function
}

void clouds(){
  noStroke();
  
  fill(90);
  ellipse(40, 40, 120, 100);
  ellipse(260, 50, 110, 110); 
  ellipse(470, 50, 140, 110);
  
  fill(76);
  ellipse(150, 60, 140, 120);
  ellipse(370, 55, 160, 130);
  
  fill(100);
  ellipse(100, 0, 100, 50);
  ellipse(200, 0, 90, 80);
  ellipse(300, 0, 80, 50);
  ellipse(450, 0, 80, 40);
}


class Rain {

float x = random(width);    //have x value be anywhere between the width of the screen
float y = random(-100, 0);  //have y value start anywhere from -100 to 0, give the drops an area to separate
float yspeed = random(1, 4);//have y speed range from 1 to 4

void fallingRain(){
  y = yspeed + y;           //have y be itself plus its speed
  
  if (y > height) {         //if the rain drop goes lower than the screen it will reset back up top
    y = random(-100, -0); }  
}

void showRain(){
  stroke(50, 40, 232);      //the color of the line
  line(x, y, x, y+12); }    //the rain drop itself
}
