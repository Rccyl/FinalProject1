import java.util.*;

abstract class Building{
    protected int[] cost= new int[5];// (lumber, grain, ore, wool, brick, barren)
    protected int[] paintColor= new int[3];// bgm numbers to 255 (red val, green val, blue val)

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

    int[] getColor(){
	return paintColor;
    }

    void setColor(int red, int green, int blue){
	paintColor[0]=red;
	paintColor[1]=green;
	paintColor[2]=blue;
    }

    //abstract boolean check(int x, int y);
} 
