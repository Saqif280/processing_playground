PrintWriter output;

void setup() {
  // Create a new file
  size(1000, 600);
  output = createWriter("positions.txt"); 
}

void draw() {
  if(mousePressed){
    fill(0);
    ellipse(mouseX,mouseY,5,5);
    text(mouseX + "," + mouseY, mouseX, mouseY);
    output.println(mouseX + "," + mouseY); // Write the coordinate to the file
  }
}

void keyPressed() {
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file
  exit(); // Stops the program
}