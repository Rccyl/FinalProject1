import java.util.*;
//importing sprite animation stuff
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;

class Game_Files{
    
    protected int[] unspentProduction;
    protected Object[][] cityMap;
    protected Object[][] roadMap;
    protected String[] productionNames= new String[]{"Lumber","Grain","Ore","Wool","Brick","Barren"};
    Random r=new Random(); //in case some random stuff needed (generating tiles randomly?)
    
    Game_Files(){
        unspentProduction = new int[6];//{3,3,2,3,2,1};
        setTiles(cityMap,11,11,1);
    }
    
    void setTiles(Object map, int rows,int cols,int k){
        map = new Object[rows][cols];
        for(int i=1;i<11;i+=2){
          int j=k*abs(((5-i)/2)+1);
          map[i][j]= makeTile();
        }
    }
      
    Tiles makeTile(){
        Tiles tile = new Tiles();
        int pickOne=r.nextInt(6);
        if(unspentProduction[pickOne]>0){
           unspentProduction[pickOne]--;
           return tile;
        } else{
           makeTile();
           return null;
        }
    }

  //credit for following code: Steven Lambert, "An Introduction to Spritesheet Animation"
    function SpriteSheet(path, frameWidth, frameHeight) {
       var image = new Image();
       var framesPerRow;
       // calculate the number of frames in a row after the image loads
       var self = this;
       image.onload = function() {
          framesPerRow = Math.floor(image.width / frameWidth);
       }; 
       image.src = path;
    }
    //and we can set the path to some file in Game folder (change theme or still use elemental stuff?)

    //x and y are mousePress coordinates on map
    boolean check(Object e, int x, int y){
        String objectName=e.getClass().getSimpleName();
        if (objectName.equals("Facilities")){
           checkFacilities(e,x,y); 
        }
        else if (objectName.equals("Roads")){
           checkRoads(e,x,y); 
        }
    }

    boolean checkFacilities(Object facility,int x, int y){
       Object thing= cityMap[x][y];
       String thingName=thing.getClass().getSimpleName(); //what is already there
       String putThingName=facility.getClass().getSimpleName(); //what you want to put
       String[] classes={"Settlement","Cities","Facilities"};
       if (thingName==null || Arrays.asList(classes).contains(thingName)){
           return false;
       } 
       else{
           cityMap[x][y]= new facility.getClass();
           return true;
       }
    }
    
    boolean checkRoads(Object road,int x, int y){
       Object thing= roadMap[x][y];
       String thingName=thing.getClass().getSimpleName(); //what is already there
       String putThingName=road.getClass().getSimpleName(); //what you want to put
       String[] classes={"Roads"};
       if (thingName==null || Arrays.asList(classes).contains(thingName)){
           return false;
       } 
       else{
           roadMap[x][y]= new road.getClass();
           return true;
       }
    }

}
         
