import java.util.*;
//importing sprite animation stuff
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;

class Game_Files{
    
    protected int[] tileArray=new int[19];
    protected Object[][] cityMap;
    protected Object[][] roadMap;
    protected String[] productionNames= new String[]{"Lumber","Grain","Ore","Wool","Brick","Barren"};
    Random r=new Random(); //in case some random stuff needed (generating tiles randomly?)
    
    Game_Files(){
        composition(3,3,2,3,2,1);
        setTiles(cityMap,11,11,1);
    }
    
    void setTiles(Object[][] map, int rows,int cols,int k){
        map = new Object[rows][cols];
        for(int i=1;i<11;i+=2){
          int j=k*abs(((5-i)/2)+1);
          //map[i][j]= makeTile();
        }
    }

    void composition(int lumber,int grain,int ore,int wool,int brick,int barren){
        for(int i=0;i<tileArray.length;i++){
            for(int j=lumber;j>0;j--){
               tileArray[i]=0;
               i++;
            }
            for(int j=grain;j>0;j--){
               tileArray[i]=1;
               i++;
            }
            for(int j=ore;j>0;j--){
               tileArray[i]=2;
               i++;
            }
            for(int j=wool;j>0;j--){
               tileArray[i]=3;
               i++;
            }
            for(int j=brick;j>0;j--){
               tileArray[i]=4;
               i++;
            }
            for(int j=barren;j>0;j--){
               tileArray[i]=5;
               i++;
            }
        }
    }
              
    
    void setTiles(Object map, int rows,int cols,int k){
        map = new Object[rows][cols];
        for(int t=0;t<tileArray.length;t++){
            for(int i=1;i<11;i+=2){
              int j=k*abs(((5-i)/2)+1);
              //map[i][j]=tileArray[t];
        }  
      }  
    }
  
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
       String thingName=thing.getClass().getSimpleName(); //what is already there
       String putThingName=facility.getClass().getSimpleName(); //what you want to put
       String[] classes={"Settlement","Cities","Facilities","Trading"};
       if (thingName==null || Arrays.asList(classes).contains(thingName)){
           return false;
       } 
       else{
           cityMap[x][y]= new Object();
           // how to get class of facility (facility.getClass() doesn't work)
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
           roadMap[x][y]= new Object();
           // how to get class of road (road.getClass() doesn't work)
           return true;
       }
    }

}
         
