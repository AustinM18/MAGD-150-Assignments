
  //declaring variables for the mouses position
  float xPosition = mouseX;
  float yPosition = mouseY;
  float xDirection = 1.5;
  
  float squareWidth = 40.5;
  float squareHeight = 40.5;

void setup() {
  size(450, 600);
  frameRate(60);
}

void draw() {  
  //desiging the back of the wallpaper with the three various rectangles and colors
  noStroke();
  fill(13, 61, 255);
  rect(0, 0, 500, 200);
  fill(0, 184, 255);
  rect(0, 200, 500, 200);
  fill(12, 299, 232);
  rect(0, 400, 500, 200);

  //designing the three moving squares that move across the screen
  fill(255, 133, 0);
  rect(xPosition, yPosition, squareWidth, squareHeight);
  fill(255, 67, 0);
  rect(xPosition + 6, yPosition + 50, 25, 25);
  rect(xPosition + 6, yPosition - 35, 25, 25);
  xPosition = xPosition + xDirection;

  //make it so the squares will switch direction once it hits the end of either side of the screen
  if (xPosition > width - 40 || xPosition < 0) {
    xDirection = -xDirection; }
}


//if the mouse button is pressed it will change the position of the squares
void mousePressed() {
  xPosition = mouseX;
  yPosition = mouseY;
  
  //print off the new coordinates along with the total frames for the program
  println("New Coordinates: " + "(" + mouseX + ", " + mouseY + ")");
  println("Total frames during program: " + frameCount);
  
  //print out the coordinates numbers if they were squared or sqaure rooted
  println("Coordinates Sqaured: " + "(" + sq(mouseX) + ", " + sq(mouseY) + ")");
  println("Coordinates Sqaure Rooted: " + "(" + sqrt(mouseX) + ", " + sqrt(mouseY) + ")" + "\n"); 
}


//if a key is pressed the squares change direction
void keyPressed() {
  if (key == 'a') {
  xDirection = (xDirection * -1); }
  if (key == 'd') {
    xDirection = abs(xDirection); }
}
