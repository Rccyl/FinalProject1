class Settlement extends Building{

  protected int[]chance = new int[3];
  protected ArrayList<Integer>production = new ArrayList();
 
  Settlement(float x,float y,color player){
    setCost(1,1,0,0,0);
    setXY(x,y);
    strokeColor=player;
    
  }
  
  Settlement(){
  }
  
  void setProduction(int x,int y){
    /*if(y==0){
      addProduction(x-1,y+1,3);
    }else if(y==10){
      addProduction(x-1,y-1,3);
    }else if(x==0){
      addProduction(x,y-1,2);
      addProduction(x,y+1,2);  
    }else if(x==10){
      addProduction(x-1,y-1,2);
      addProduction(x-1,y+1,2);
    }else{
      addProduction(x-1,y-1);
      addProduction(x-1,y+1);
    }*/
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

