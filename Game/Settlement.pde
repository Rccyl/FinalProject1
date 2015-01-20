class Settlement extends Building{

  protected int[]chance = new int[3];
  protected int[]production = new int[3];
 
  Settlement(int x,int y,color player){
    setCost(1,1,0,0,0);
    setXY(x,y);
    strokeColor=player;
  }
  
    
  void display(){
    pushMatrix();
    triangle(x,y,x+20,y,x+10,y+10*sqrt(3));
    rect(x,y,20,20);
    stroke(0);
    fill(strokeColor);
    popMatrix();
   }
}

