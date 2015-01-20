class Player{
  
  protected int points;
  protected ArrayList<Tile> territory = new ArrayList<Tile>();
  protected ArrayList<Settlement> structures= new ArrayList<Settlement>();
  protected ArrayList<Road> roads= new ArrayList<Road>();
  protected int[] supply= new int[5];
    // Lumber(0), Grain(1), Ore(2), Wool(3), Brick(4)
 protected boolean playerTurn;
  
  Player(boolean turn){
    setSupply(0,0,0,0,0);
    setPlayerTurn(turn);
  }
  
  Player(){
    setSupply(0,0,0,0,0);
    setPlayerTurn(false);
  }
  
  int[] getSupply(){
    return supply; 
  }
  
  void setSupply(int lumber, int grain, int ore, int wool, int brick){
    supply[0]=lumber;
    supply[1]=grain;
    supply[2]=ore;
    supply[3]=wool;
    supply[4]=brick;
  }
  
  boolean getPlayerTurn(){
   return playerTurn; 
  }
  
  void setPlayerTurn(boolean turn){
    playerTurn=turn;
  }
  
  void buildSettlement(){
    if(mousePressed && 
    mouseX>=tiles[8].getX()-80 && mouseX<=tiles[12].getX()+80 && 
    mouseY>=70 && mouseY<=710){
      int y=mouseY/120;
      int x;
      if(y==1 || y==5){
        x=mouseX/3;
      }else if(y==2 || y==4){
        x=mouseX/4;
      }else{
        x=mouseX/5;
      }
      float[] coords = new float[2];    
      if(y==1){
        coords=chooseVertex(x);
      }else if(y==2){
        coords=chooseVertex(x+3);
      }else if(y==3){
        coords=chooseVertex(x+7);
      }else if(y==4){
        coords=chooseVertex(x+12);
      }else{
        coords=chooseVertex(x+16);
      }
      
    }
  }
  
  float[] chooseVertex(int t){
    float[] coords = new float[2];
    int vertex,dXY;
    if(mouseY>tiles[t].getY()+130 || mouseY<tiles[t].getY()-130){
      vertex=1;
      dXY=signum(tiles[t].getY()-mouseY);
    }else if(mouseY>tiles[t].getY()){
      vertex=2;
      dXY=signum(tiles[t].getX()-mouseX);
    }else{
      vertex=3;
      dXY=signum(tiles[t].getX()-mouseX);
    }
    coords=tiles[t].findVertex(vertex,dXY);
    return coords;
  }
  
  int signum(float f){
    if (f > 0) return 1;
    if (f < 0) return -1;
    return 0;
  }
} 

  
  
  

      
        
    
    
    
 
      
      
      
      
      
          
      

