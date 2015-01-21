class Game_Files{
    
    protected String[] productionNames= new String[]{"Lumber","Grain","Ore","Wool","Brick","Barren"};
    Random r=new Random(); //in case some random stuff needed (generating tiles randomly?)
 
    Game_Files(){
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

