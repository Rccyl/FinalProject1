class Settlement extends Building{

  protected int[]chance = new int[3];
  protected int[]production = new int[3];
 
  Settlement(float x,float y,color player){
    setCost(1,1,0,0,0);
    setXY(x,y);
    strokeColor=player;
    
  }
  
  Settlement(){
  }
  
    
  void display(){
    pushMatrix();
    triangle(x-10,y-10,x+10,y-10,x,y-10-10*sqrt(3));
    rect(x-10,y+10,20,20);
    stroke(0);
    fill(strokeColor);
    popMatrix();
   }
}

