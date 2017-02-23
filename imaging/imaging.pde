PImage img;

void setup() {
  size(350, 350);
  img = loadImage("saqif.JPG");
  //background(200);
}

void draw() { 
  int x = int(random(img.width));
  int y = int(random(img.height));
  int imgCol = img.get(x, y);
  fill(imgCol, 150);
  text(imgCol, x, y);
  // create coordinate text
}

void keyPressed() {
  img = loadImage("saqif2.jpg");
}