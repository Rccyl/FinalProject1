
import java.util*;
import 

public class Game_Files{
    
    protected Object[][] cityMap;
    protected object[][] roadMap;
    
    public Game_Files(){
        cityMap = new Object[11][11];
        setTiles(cityMap;1);
        setFacilities();
        roadMap = new Object[21][11];
        setTiles(roadMap;2);
        setRoads();
    }
    
    public setTiles(Object[][] map;int k){
        for(int i=1;i<11;i+=2){
         
