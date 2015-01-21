import java.util.*;

abstract class Building{
    protected int[] cost= new int[5];// (lumber, grain, ore, wool, brick, barren)
    protected color strokeColor;
    protected float x,y;

    Building(){
	setCost(1,1,1,1,1);
	setColor(255,0,0);
    }
    
    int[] getCost(){
	return cost;
    }

    void setCost(int lumber, int grain, int wool, int brick, int ore){
	cost[0]=lumber;
	cost[1]=grain;
	cost[2]=wool;
	cost[3]=brick;
	cost[4]=ore;
    }

    color getColor(){
	return strokeColor;
    }

    void setColor(int red, int green, int blue){
	strokeColor = color(red,green,blue);
    }
    
   float getX(){
     return x; 
   }
    
   float getY(){
     return y; 
   }
   
   void setXY(float x,float y){
    this.x=x;
    this.y=y; 
   }
}

