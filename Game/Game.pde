
class Game_Files{
    
    protected String[] productionNames= new String[]{"Lumber","Grain","Ore","Wool","Brick","Barren"};
    Random r=new Random(); //in case some random stuff needed (generating tiles randomly?)
 
    Game_Files(){
    }
          /*
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
              
    
    void setTiles(int rows,int cols){
        for(int t=0;t<tileArray.length;t++){
            for(int i=1;i<11;i+=2){
              int j=abs(((5-i)/2)+1);
              cityMap[i][j]=tileArray[t];
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
    */
}

