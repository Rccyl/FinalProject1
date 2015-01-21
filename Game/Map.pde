PImage lumber;
PImage grain;
PImage ore;
PImage wool;
PImage brick;
PImage barren;
PImage[] img= new PImage[]{lumber, grain, ore, wool, brick, barren};

protected Tile[] tiles = new Tile[19];
protected ArrayList<Settlement> settlements = new ArrayList();
protected Object[][] cityMap= new Object[11][11];
protected Object[][] roadMap= new Object[11][21];
protected Object thing;
protected Player[] players;
protected color colorBS,colorBR,colorET;
protected int currentPlayer;

void setup(){  
  size(1300,800);
  background(80,160,200);
    
  setBiomes(4,4,3,4,3,1);
  setRolls();
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
  setTiles();
  
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
  currentPlayer=0;
    
}

void draw(){
  background(80,160,200);
  
  //title setup
  textSize(20);
  fill(255,215,0);
  text("THE",width*9/13+40,50);
  textSize(30);
  fill(255,215,0);
  text("SETTLERS",width*9/13+80,50);
  textSize(20);
  fill(255,215,0);
  text("OF",width*10/13+120,50);
  textSize(30);
  fill(255,215,0);
  text("______________",width*9/13+40,52);
  textSize(61);
  fill(255,215,0);
  text("CATAN",width*9/13+40,100);

  //action buttons for player
  fill(colorBS);
  rect(width*9/13-5,667,125,25,15);
  textSize(14);
  fill(255,255,255);
  text("Build Settlement",width*9/13+3,685);
    
  fill(colorBR);
  rect(width*10/13+25,667,85,25,15);
  textSize(14);
  fill(255,255,255);
  text("Build Road",width*10/13+32,685);
    
  fill(colorET);
  rect(width*11/13+15,667,70,25,15);
  textSize(14);
  fill(255,255,255);
  text("End Turn",width*11/13+20,685);
  
  for(int i=0;i<19;i++){
  tiles[i].display();
  }
  for(int i=0;i<settlements.size();i++){
  settlements.get(i).display();
  }
  
  for (int i=0;i<players.length;i++){
    fill(255,255,255);
    rect(width*9/13-10,((i*410)/(players.length-1))+120,300,125, 7);
    
    textSize(25);
    if (players[i].getPlayerTurn()){
      fill(players[i].getPlayerColor());
    }
    else{
      fill(0,0,0); 
    }  
    
    //players actual stats
    text("Player "+(i+1)+" Stats:",width*9/13,((i*410)/(players.length-1))+150);
  
    int[] pSupply=players[i].getSupply();
    textSize(12);
    text("Lumber: "+pSupply[0],width*9/13,((i*410)/(players.length-1))+170);
    text("Grain: "+pSupply[1],width*10/13,((i*410)/(players.length-1))+170);
    text("Ore: "+pSupply[2],width*11/13,((i*410)/(players.length-1))+170);
    text("Wool: "+pSupply[3],width*9/13,((i*410)/(players.length-1))+190);
    text("Brick: "+pSupply[4],width*10/13,((i*410)/(players.length-1))+190);

    text("Settlements "+players[i].getNumSettlements(),width*9/13,((i*410)/(players.length-1))+210);
    text("Roads "+players[i].getNumRoads(),width*10/13,((i*410)/(players.length-1))+210);
    
    text("Victory Points "+players[i].getPlayerPoints(),width*9/13,((i*410)/(players.length-1))+230);
  }
 
  //changes color of whatever button mouse if hovering over 
  if(mouseOverButton(width*9/13-5,667,125,25)){ //means selected "Build Settlement" button
    colorBS=color(255,51,51);
  }
  else if (mouseOverButton(width*10/13+25,667,85,25)){ //means selected "Build Roads" button
    colorBR=color(255,51,51);
  }
  else if (mouseOverButton(width*11/13+15,667,70,25)){ //means selected "End Turn" button 
    colorET=color(255,51,51);
  }
  else{  
    colorBS=color(255,0,0);
    colorBR=color(255,0,0);
    colorET=color(255,0,0);
  } 
}

void mousePressed(){
  //Dim:(width*9/13-5,667,125,25,15)== (x,y,w,h,radius)
  if(mouseOverButton(width*9/13-5,667,125,25)){ //means selected "Build Settlement" button
    players[currentPlayer].buildSettlement();
  }
  else if (mouseOverButton(width*10/13+25,667,85,25)){ //means selected "Build Roads" button
    
  }
  //Dim:(width*11/13+15,667,70,25,15)== (x,y,w,h,radius)
  else if (mouseOverButton(width*11/13+15,667,70,25)){ //means selected "End Turn" button 
    players[currentPlayer].setPlayerTurn(false);
    currentPlayer= (currentPlayer+1)%(players.length);
    players[currentPlayer].setPlayerTurn(true);
  }
  //maybe one more for "Build Road"?
}

//from https://amnonp5.wordpress.com/2012/01/28/25-life-saving-tips-for-processing/
boolean mouseOverButton(int x, int y, int w, int h) {
  return (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h);
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
  for(int i=1;i<10;i+=2){
    int j=abs(((5-i)/2)+1);
    if (i==9){
      for(int t=9;t<-1*((5-i)/2)+5;t++){
        cityMap[i][j]=tiles[t];
        tiles[t].setCMXY(i,j);
        j+=2;
      }
    }else {
      for(int t=9;t<-1*((5-i)/2)+5;t++){
        cityMap[i][j]=tiles[t];
        tiles[t].setCMXY(i,j);
        j+=2;
      }
    }
  }
}
