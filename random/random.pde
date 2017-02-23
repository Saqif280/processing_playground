void setup() {
  size(640, 360);
  noStroke();
}

void draw() {
  background(0);
  // Scale the mouseX value from 0 to 640 to a range between 0 and 175
  //float c = map(mouseX, 0, width, 0, 175);
  // Scale the mouseX value from 0 to 640 to a range between 40 and 300

  if(mousePressed){
    float d = map(mouseX, mouseY, width, mouseX, mouseY);
    int val = (int)(255*Math.random());
    fill(val,val, 0);
    ellipse(mouseY, mouseX, (int)(255*Math.random()), d);
    rect(width/2, height/2, mouseX, mouseY); 
  }
}