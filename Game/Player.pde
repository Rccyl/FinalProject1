class Player{
  
  protected int points;
  protected ArrayList<Tile> territory = new ArrayList<Tile>();
  protected ArrayList<Settlement> structures= new ArrayList<Settlement>();
  protected ArrayList<Road> roads= new ArrayList<Road>();
  protected int[] supply= new int[5];
    // Lumber(0), Grain(1), Ore(2), Wool(3), Brick(4)
  
  Player(){
  }
  
 
  void buildSettlement(){
    if(mousePressed && 
    mouseX>=tiles[8].getX()-80 && mouseX<=tiles[12].getX()+80 && 
    mouseY>=70 && mouseY<=710){
    int y = mouseY/120;
    if(y==1 || y=5){
      int x = mouseX/3;
    }else if(y==2 || y=4){
      int x = mouseX/4;
    }else{
      int x = mouseX/5;
    }
    
    
    
    }
  }
      
      
      
      
      
          
      

}
