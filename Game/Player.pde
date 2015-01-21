class Player{
  
  protected color playerColor;
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
  
  int getPlayerPoints(){
    return points; 
  }
  
  void setPlayerPoints(int points){
    this.points=points; 
  }
  
  int getNumSettlements(){
    return structures.size(); 
  }
  
<<<<<<< HEAD
  ArrayList<Settlement> getSettlementsAL(){
    return structures;
  }
  
  boolean addSettlements(){
=======
  //does it need check function?
  void addSettlements(){
>>>>>>> e118c447781fe683ba57cb69004f4fcc01d7c12d
    //wood/lumber=0; grain/wheat=1; ore=2; wool/sheep=3; brick/brick=4; <--trying to compare with game rules 
    boolean hasResources= (supply[0]>0 && supply[1]>0 && supply[3]>0 && supply[4]>0);
    if (hasResources){
      structures.add(new Settlement());
      setSupply(supply[0]-1,supply[1]-1,supply[2],supply[3]-1,supply[4]-1);
      setPlayerPoints(getPlayerPoints()+1);  
    }
    return hasResources;
  }
  
/*  int getNumCities(){
    return cities.size(); 
  }

  //does it need check function?
  void addCities(int settlementIndex){
    //wood/lumber=0; grain/wheat=1; ore=2; wool/sheep=3; brick/brick=4; <--trying to compare with game rules 
    boolean hasResources= (supply[1]>1 && supply[2]>2);
    if (hasResources){
      int cityX=structures.get(settlementIndex).getX();
      int cityY=structures.get(settlementIndex).getY();
      //added coordinates since city has to be in same place
      //cities.add(new City(cityX,cityY));
      structures.remove(settlementIndex);
      setSupply(supply[1]-2,supply[1],supply[2]-3,supply[3],supply[4]);
      setPlayerPoints(getPlayerPoints()+2); 
    }
    //can return a message or just do nothing
  }
  */
  int getNumRoads(){
    return roads.size();
  }

  boolean addRoads(){
    //wood/lumber=0; grain/wheat=1; ore=2; wool/sheep=3; brick/brick=4; <--trying to compare with game rules 
    boolean hasResources= (supply[0]>0 && supply[4]>0);
    if (hasResources){
      structures.add(new Settlement());
      setSupply(supply[0]-1,supply[1],supply[2],supply[3],supply[4]-1);
    }
    return hasResources;
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
      float[] coords = new float[4];    
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
      int i = (int)coords[2];
      int j = (int)coords[3];
      Settlement Alpha = new Settlement(coords[0],coords[1],playerColor);
      cityMap[i][j]=Alpha;
      Alpha.setProduction(i,j);
      settlements.add(Alpha);
      
            
    }
  }
  
  float[] chooseVertex(int t){
    float[] coords = new float[4];
    int vertex,dXY;
    if(mouseY>tiles[t].getY()+130 || mouseY<tiles[t].getY()-130){
      vertex=1;
      dXY=signum(tiles[t].getY()-mouseY);
      coords[2]=tiles[t].getCMX();
      coords[3]=tiles[t].getCMY()-dXY;      
    }else if(mouseY>tiles[t].getY()){
      vertex=2;
      dXY=signum(tiles[t].getX()-mouseX);
      coords[2]=tiles[t].getCMX()-dXY;
      coords[3]=tiles[t].getCMY()-dXY;
    }else{
      vertex=3;
      dXY=signum(tiles[t].getX()-mouseX);
      coords[2]=tiles[t].getCMX()-dXY;
      coords[3]=tiles[t].getCMY()+dXY;
    }
    float[] vCoords=tiles[t].findVertex(vertex,dXY);
    coords[0]=vCoords[0];
    coords[1]=vCoords[1];    
    return coords;
  }
  
  int signum(float f){
    if (f > 0) return 1;
    if (f < 0) return -1;
    return 0;
  }
} 

  
  
  

      
        
    
    
    
 
      
      
      
      
      
          
      

