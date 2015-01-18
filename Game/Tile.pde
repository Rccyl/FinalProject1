import java.util.*;

class Tile{
      
  protected int biome,roll;   
  // Lumber(0),Grain(1),Ore(2),Wool(3),Brick(4),Barren(5)
  // 2-12 dice roll
  protected float x,y;
  protected color strokeColor;
  protected color[] colorList={color(100,60,20),color(200,200,60),color(60,60,60),color(60,150,60),color(150,20,20),color(150,100,50)};
    
  Tile(int biome){
    setBiome(biome);
    }
  
  Tile(){
   setBiome(0); 
  }
           
  int getBiome(){
    return biome;
    }
    
  void setBiome(int biome){
    this.biome=biome;
    strokeColor=colorList[biome];
  }
  
  int getRoll(){
    return roll;
  }
  
  void setRoll(int roll){
      this.roll=roll;
  }
  
  float getX(){
    return x;
  }
  
  float getY(){
    return y;
  }
  
  void setXY(float x,float y){
      this.x=x;
      this.y=y;
  }
  
  void display(){
    pushMatrix();
    translate(x,y);
    stroke(0);
    fill(strokeColor);
    polygon(0, 0, 80, 6);
    popMatrix();
    textSize(25);          // not working
    text(roll,x,y);
    fill(0,0,0);
  }
  
  void polygon(float x, float y, float radius, int npoints) {
    float angle = TWO_PI / npoints;
    beginShape();
    for (float a = 0; a < TWO_PI; a += angle) {
      float sx = x + sin(a) * radius;
      float sy = y + cos(a) * radius;
      vertex(sx, sy);
    }
    endShape(CLOSE);
  }
}

