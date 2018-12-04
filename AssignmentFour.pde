//variables for pizza movement
float xPosition = 270;
float yPosition = 200;
float xDirection = 1.5;

 
void setup() {
 size(600, 400);
}

void draw() {
  //create a background so the moving pizza slice doesnt act glitchy
  fill(178, 170, 166);
  rect(0, 0, 600, 400);
  
  //Pizza
  noStroke();
  fill(219, 162, 74);
  arc(250, 200, 300, 300, (PI/6), (11 * PI)/6, PIE);
  arc(xPosition, yPosition, 300, 300, (-PI/6), (PI/6), PIE);
  
  //if a key is pressed it switches the type of sauce
  if (keyPressed) {
    fill(250, 245, 227); 
    println("Sauce Selected: Fettucini"); }
  else {
    fill(225, 35, 1);
    println("Sauce Selected: Marinara"); }
  arc(250, 200, 280, 280, (PI/6), (11 * PI/6), PIE);
  arc(xPosition, yPosition, 280, 280, (-PI/6), (PI/6), PIE);
    
  //pizza
  fill(255, 250, 138);
  arc(250, 200, 260, 260, (PI/6), (11 * PI/6), PIE);
  arc(xPosition, yPosition, 260, 260, (-PI/6), (PI/6), PIE);
 
  //GreenPeppers, change strokeweight and color, use a for loop to determine the layout three peppers on top and bottom of pizza
  strokeWeight(5);   
  stroke(0, 178, 18);
  for (int i = 100; i < 175; i = i + 25) {
     line(175, i, 325, i); }
   for (int i = 250; i < 325; i = i + 25) {
     line(175, i, 325, i); }   
        
   noStroke();
 //Pepperoni and black olive code, if mouse isn't pressed the color is red, if it is pressed the color is black
 if (mousePressed) {
   fill(0, 0, 0);
   println("Topping Selected: Black Olive");}
 else {
   fill(206, 0, 0);
   println("Toppping Selected: Pepperoni");}
  ellipse(250, 125, 40, 40);
  ellipse(250, 275, 40, 40);
  ellipse(175, 200, 40, 40);
  ellipse(xPosition + 75, yPosition, 40, 40);
 
 //Allows the pizza slice to move
  xPosition = xPosition + xDirection;
  if (xPosition < 270 || xPosition > 350){
    xDirection = -xDirection; }     
}
