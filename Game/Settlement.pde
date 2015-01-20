class Settlement extends Building{

  protected int[]chance; 
 
  Settlement(int rCred, int rCgreen, int rCblue){
    setCost(1,1,0,0,0);
  }
  
  Settlement(){
    setCost(1,1,0,1,0);
    setColor(255,0,0);
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

