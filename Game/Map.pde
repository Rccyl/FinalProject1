PImage lumber;
PImage grain;
PImage ore;
PImage wool;
PImage brick;
PImage barren;
PImage[] img= new PImage[]{lumber, grain, ore, wool, brick, barren};

protected Tile[] tiles = new Tile[19];
protected Object[][] cityMap= new Object[11][11];
protected Object[][] roadMap= new Object[11][21];
protected Object thing;
protected Player[] players;

void setup(){  
  size(1300,800);
  background(80,160,200);
    
  setBiomes(4,4,3,4,3,1);
  setRolls();
  setTiles();
  
  for(int i=0;i<3;i++){
    tiles[i].setXY(i*80*sqrt(3)+width*1/5,150);
  }
  for(int i=3;i<7;i++){
    tiles[i].setXY((i-3)*80*sqrt(3)+width*1/5-40*sqrt(3),270);
  }
  for(int i=7;i<12;i++){
    tiles[i].setXY((i-7)*80*sqrt(3)+width*1/5-80*sqrt(3),390);
  }
  for(int i=12;i<16;i++){
    tiles[i].setXY((i-12)*80*sqrt(3)+width*1/5-40*sqrt(3),510);
  }
  for(int i=16;i<19;i++){
    tiles[i].setXY((i-16)*80*sqrt(3)+width*1/5,630);
  }
  lumber=loadImage("desks.jpg");
  grain=loadImage("grain.jpg");
  ore=loadImage("ore.jpg");
  wool=loadImage("wool.jpg");
  brick=loadImage("brick.jpg");
  barren=loadImage("barren.jpg");
  
  players=new Player[4];
  for (int i=0;i<players.length;i++){
    if (i==0){players[i]=new Player(true);}
    else{players[i]=new Player();} 
  }
  
}

void draw(){
  //image(lumber,0,height/2,lumber.width/2,lumber.height/2);
  background(80,160,200);
  
  //title setup
  textSize(20);
  fill(255,215,0);
  text("THE",width*9/13,50);
  textSize(30);
  fill(255,215,0);
  text("SETTLERS",width*9/13+40,50);
  textSize(20);
  fill(255,215,0);
  text("OF",width*10/13+80,50);
  textSize(30);
  fill(255,215,0);
  text("______________",width*9/13,52);
  textSize(61);
  fill(255,215,0);
  text("CATAN",width*9/13,100);
  
  for(int i=0;i<19;i++){
  tiles[i].display();
  }
  
  for (int i=0;i<players.length;i++){
    textSize(25);
    if (players[i].getPlayerTurn()){
      fill(237,67,55);
      //NOTE: FIGURE OUT HOW TO CHANGE PLAYERTURN ONCE PLAYER'S TURN IS OVER!!!
    }
    else{
      fill(0,0,0); 
    }
    text("Player "+(i+1)+" Stats:",width*9/13,((i*380)/(players.length-1))+150);
    
    int[] pSupply=players[i].getSupply();
    textSize(12);
    //fill(0,0,0);
    text("Lumber: "+pSupply[0],width*9/13,((i*380)/(players.length-1))+180);
    textSize(12);
    //fill(0,0,0);
    text("Grain: "+pSupply[1],width*10/13,((i*380)/(players.length-1))+180);
    textSize(12);
    //fill(0,0,0);
    text("Ore: "+pSupply[2],width*11/13,((i*380)/(players.length-1))+180);
    textSize(12);
    //fill(0,0,0);
    text("Wool: "+pSupply[3],width*9/13,((i*380)/(players.length-1))+210);
    textSize(12);
    //fill(0,0,0);
    text("Brick: "+pSupply[4],width*10/13,((i*380)/(players.length-1))+210);

  }
  
  if (mousePressed){
   //getting object to be placed
    int x= mouseX;
   int y= mouseY;
  }
  
}


void setBiomes(int lumber,int grain,int ore,int wool,int brick,int barren){
  int x=0;
  setBiomes2(x,0,lumber);
  x+=lumber;
  setBiomes2(x,1,grain);
  x+=grain;
  setBiomes2(x,2,ore);
  x+=ore;
  setBiomes2(x,3,wool);
  x+=wool;
  setBiomes2(x,4,brick);
  x+=brick;
  setBiomes2(x,5,barren);
  shuffleTiles();
} 

void setBiomes2(int i,int id,int resource){
  for(int j=0;j<resource;j++){
      tiles[i]=new Tile(id);
      i++;
  }
}
 
void shuffleTiles(){
  Random rnd = new Random();
  for (int i=tiles.length-1;i>0;i--){
    int index=rnd.nextInt(i+1);
    Tile a=tiles[index];
    tiles[index]=tiles[i];
    tiles[i]=a;
  }
}

void setRolls(){
    ArrayList<Integer> rolls = new ArrayList();
    rolls.addAll(Arrays.asList(1,2,2,2,2,2,2,2,2,1));
    Collections.shuffle(rolls);
    for(int i=0;i<rolls.size();i++){
      if (tiles[i].getBiome()!=6){
        tiles[i].setRoll(rolls.get(i));
      }
    }
}
 
void setTiles(){
  for(int t=0;t<tiles.length;t++){
    for(int i=1;i<11;i+=2){
      int j=abs(((5-i)/2)+1);
      cityMap[i][j]=tiles[t];
    }
  }
  for(int t=0;t<tiles.length;t++){
    for(int i=1;i<11;i+=2){
      int j=2*abs(((5-i)/2)+1);
      roadMap[i][j]=tiles[t];
    }
  }
}
  
/*
boolean check(Object e, int x, int y){
  boolean checkThing=true;
  String objectName=e.getClass().getSimpleName();
  if (objectName.equals("Facilities")){
    checkThing=checkFacilities(e,x,y); 
  }
  else if (objectName.equals("Roads")){
    checkThing=checkRoads(e,x,y); 
  }
  return checkThing;
}

boolean checkFacilities(Object facility,int x, int y){
  Object thing= cityMap[x][y];
<<<<<<< HEAD
=======
  int[] paintColor= facility.getColor();
  int red=paintColor[0];
  int green=paintColor[1];
  int blue=paintColor[2];
>>>>>>> 0848e2663a798f805b677aa0d2ba58634fcf8518
  String thingName=thing.getClass().getSimpleName(); //what is already there
  String putThingName=facility.getClass().getSimpleName(); //what you want to put
  String[] classes=new String[]{"Settlement","Cities","Facilities","Trading"};
  if(thingName==null || Arrays.asList(classes).contains(thingName)){
    return false;
  }
  else{
    cityMap[x][y]= new Facility();
    // how to get class of facility (facility.getClass() doesn't work)
    return true;
  }
}
    
boolean checkRoads(Object road,int x, int y){
  Object thing= roadMap[x][y];
  String thingName=thing.getClass().getSimpleName(); //what is already there
  String putThingName=road.getClass().getSimpleName(); //what you want to put
  String[] classes=new String[]{"Roads"};
  if (thingName==null || Arrays.asList(classes).contains(thingName)){
    return false;
  } 
  else{
    roadMap[x][y]= new Road();
    // how to get class of road (road.getClass() doesn't work)
    return true;
    
  }
  
  */
  


