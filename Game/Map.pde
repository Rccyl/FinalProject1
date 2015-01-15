PImage lumber;
PImage grain;
PImage ore;
PImage wool;
PImage brick;
PImage barren;
PImage[] img= new PImage[]{lumber, grain, ore, wool, brick, barren};

protected Tile[] tiles = new Tile[19];
protected Object[][] cityMap;

void setup(){  
  size(900,900);
  background(255);
  for(int i=0;i<3;i++){
    tiles[i]=new Tile(i*80*sqrt(3)+width*1/3,200);
  }
  for(int i=3;i<7;i++){
    tiles[i]=new Tile((i-3)*80*sqrt(3)+width*1/3-40*sqrt(3),320);
  }
  for(int i=7;i<12;i++){
    tiles[i]=new Tile((i-7)*80*sqrt(3)+width*1/3-80*sqrt(3),440);
  }
  for(int i=12;i<16;i++){
    tiles[i]=new Tile((i-12)*80*sqrt(3)+width*1/3-40*sqrt(3),560);
  }
  for(int i=16;i<19;i++){
    tiles[i]=new Tile((i-16)*80*sqrt(3)+width*1/3,680);
  }
  lumber=loadImage("desks.jpg");
  grain=loadImage("grain.jpg");
  ore=loadImage("ore.jpg");
  wool=loadImage("wool.jpg");
  brick=loadImage("brick.jpg");
  barren=loadImage("barren.jpg");
  
  setBiomes(4,4,3,4,3,1);
  //setTiles();
  
  
}

void draw(){

  //image(lumber,0,height/2,lumber.width/2,lumber.height/2);
  
  background(255);
  
  for(int i=0;i<19;i++){
      tiles[i].display();
    }

}


void setBiomes(int lumber,int grain,int ore,int wool,int brick,int barren){
  for(int j=0;j<lumber;j++){
    tiles[j].setBiome(0);
  }
  for(int j=0;j<grain;j++){
    tiles[j+lumber].setBiome(1);
  }
  for(int j=0;j<ore;j++){
    tiles[j+lumber+grain].setBiome(2);
  }
  for(int j=0;j<wool;j++){
    tiles[j+lumber+grain+ore].setBiome(3);
  }
  for(int j=0;j<brick;j++){
    tiles[j+lumber+grain+ore+wool].setBiome(4);
  }
   for(int j=0;j<barren;j++){
    tiles[j+lumber+grain+ore+wool+brick].setBiome(5);
  }
}  
  
/*
void setTiles(){
  for(int t=0;t<tiles.length;t++){
    for(int i=1;i<11;i+=2){
      int j=abs(((5-i)/2)+1);
      cityMap[i][j]=tiles[t];
    }
  }
}
*/

