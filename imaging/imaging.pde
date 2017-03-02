PImage img;

void setup() {
  size(350, 350);
  img = loadImage("rsz_face2.jpg");
  //background(200);
}

void draw() { 
  int x = int(random(img.width));
  int y = int(random(img.height));
  int imgCol = img.get(x, y);
  fill(imgCol, 150);
  text("joy", x, y);
  // create coordinate text
}

void keyPressed() {
  //img = loadImage("face2.jpg");
}