
void setup(){
  size(480, 480);
  for (int i=0;i<10000;i++){
    int xCoor = int(random(480)/2);
    int yCoor = int(random(480)/2);
    fill(xCoor,yCoor,yCoor);
    stroke(153,0,0,0);
    ellipse(xCoor*2,yCoor*2,50,50);
  }
}


void draw(){
  if(mousePressed){
    fill(0);
    ellipse(mouseX,mouseY,50,50);
  }else{
    //fill(0,255,0);
  }
  
}