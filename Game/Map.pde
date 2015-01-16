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

void setup(){  
  size(1300,800);
  background(80,160,200);
    
  setBiomes(4,4,3,4,3,1);
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
  
  
  
}

void draw(){

  //image(lumber,0,height/2,lumber.width/2,lumber.height/2);
  
  background(80,160,200);
  
  for(int i=0;i<19;i++){
      tiles[i].display();
    }
<<<<<<< HEAD
    
  for (int i=0;i<players.length;i++){
    textSize(32);
    text("Player "+(i+1)+" Stats:",width*4/5)
  }
=======
   
   
>>>>>>> e41878755ec4a6f8c13d6ae04fc51c91eacb197e
  
  
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
  
  
  



