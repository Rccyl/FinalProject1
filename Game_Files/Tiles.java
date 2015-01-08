import java.until.*;

public class Tiles{
      
  /// Lumber(0),Grain(1),Ore(2),Wool(3),Brick(4),Barren(5)
  
  protected int biome;
    
  public void Tiles(int biome){
    this.biome=biome;
    }
    
  public void Tiles(){
    Random rand=new Random
    biome = rand.nextInt(6);
    }
   
  public int getBiome(){
    return biome;
    }
  
}
