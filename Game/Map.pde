PImage lumber;
PImage grain;
PImage ore;
PImage wool;
PImage brick;
PImage barren;
PImage[] img= new PImage[]{lumber, grain, ore, wool, brick, barren};

void setup(){
  size(500,500);
  lumber=loadImage("desks.jpg");
  grain=loadImage("grain.jpg");
  ore=loadImage("ore.jpg");
  wool=loadImage("wool.jpg");
  brick=loadImage("brick.jpg");
  barren=loadImage("barren.jpg");
}

void draw(){

  //image(lumber,0,height/2,lumber.width/2,lumber.height/2);
  
  background(102);
  
  pushMatrix();
  translate(width*0.2, height*0.5);
  //rotate(frameCount / 200.0);
  polygon(0, 0, 80, 6); 
  image(lumber,0,0);
  popMatrix();
  
  pushMatrix();
  translate(width*0.5, height*0.5);
  //rotate(frameCount / 50.0);
  polygon(0, 0, 80, 6); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.8, height*0.5);
  //rotate(frameCount / -100.0);
  polygon(0, 0, 80 , 6); 
  popMatrix();
}

//from Processing Documentation
void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
