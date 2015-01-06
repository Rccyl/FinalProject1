import java.until.*;

public class Tiles{
      
    /// Lumber(0),Grain(1),Ore(2),Wool(3),Brick(4)
  
  private int[]production = new int[5];
    
  public void Tiles(int resource){
    production[resource]=1;
    }
    
  public void Tiles(){
    Random rand=new Random
    prodiction[rand.nextInt(4)]=1;
    }

}
