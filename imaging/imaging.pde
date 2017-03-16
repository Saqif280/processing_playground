import processing.video.*;

Capture cam;
int iterator = 0;
PImage img;


void setup() {
  size(1080, 720);
  background(0,0);
  img = loadImage("images/photo_" + iterator + ".jpg");
  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  }
  else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]);
    cam.start();  
  }
  print(iterator);
  
}

void draw() {
  cam.start();
  int x = int(random(img.width));
  int y = int(random(img.height));
  int imgCol = img.get(x, y);
  fill(imgCol,100);
  text("derp", x, y);
  textSize(26);
}


void mouseClicked(){
  if (cam.available() == true) {
    cam.read();
  }
  image(cam, 0, 0);
  cam.stop();
  iterator++;
  saveFrame("images/photo_" + iterator + ".jpg"); //save image
  background(0,0);//wipe image
  img = loadImage("images/photo_" + iterator + ".jpg");
  draw();
  
}