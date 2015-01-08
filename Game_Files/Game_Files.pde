
import java.util*;

class Game_Files{
    
    protected int[] islandProduction;
    protected Object[][] cityMap;
    protected Object[][] roadMap;
    
    Game_Files(){
        islandProduction= new int[5];
        cityMap = new Object[11][11];
        setTiles(cityMap;1);
        setFacilities();
        roadMap = new Object[21][11];
        setTiles(roadMap;2);
        setRoads();
    }
    
    void setTiles(Object[][] map;int k){
        for(int i=1;i<11;i+=2){
          j=k*abs(((5-i)/2)+1)
          map[i][j]= makeTile();
          addProduction(map[i][j]);
        }
    }
    
    Tiles makeTile(){
        while
          
         
