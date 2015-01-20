class Player{
  
  protected int points;
  protected ArrayList<Tile> territory = new ArrayList<Tile>();
  protected ArrayList<Settlement> structures= new ArrayList<Settlement>();
  protected ArrayList<City> cities= new ArrayList<City>();
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
  
  //does it need check function?
  void addSettlements(){
    //wood/lumber=0; grain/wheat=1; ore=2; wool/sheep=3; brick/brick=4; <--trying to compare with game rules 
    boolean hasResources= (supply[0]>0 && supply[1]>0 && supply[3]>0 && supply[4]>0);
    if (hasResources){
      structures.add(new Settlement());
      setSupply(supply[0]-1,supply[1]-1,supply[2],supply[3]-1,supply[4]-1);
      setPlayerPoints(getPlayerPoints()+1);  
    }
    //can return a message or just do nothing
  }
  
  int getNumCities(){
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
      cities.add(new City(cityX,cityY));
      structures.remove(settlementIndex);
      setSupply(supply[1]-2,supply[1],supply[2]-3,supply[3],supply[4]);
      setPlayerPoints(getPlayerPoints()+2); 
    }
    //can return a message or just do nothing
  }
  
  int getNumRoads(){
    return roads.size();
  }
  
  //does it need check function?
  void addRoads(){
    //wood/lumber=0; grain/wheat=1; ore=2; wool/sheep=3; brick/brick=4; <--trying to compare with game rules 
    boolean hasResources= (supply[0]>0 && supply[4]>0);
    if (hasResources){
      structures.add(new Settlement());
      setSupply(supply[0]-1,supply[1],supply[2],supply[3],supply[4]-1);
      //setPlayerPoints(getPlayerPoints()); 
    }
    //can return a message or just do nothing
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
    int y = mouseY/120;
    if(y==1 || y==5){
      int x = mouseX/3;
    }else if(y==2 || y==4){
      int x = mouseX/4;
    }else{
      int x = mouseX/5;
    }
    
    
    
    }
  }
      
      
      
      
      
          
      

}
