import java.util.*;

abstract class Buildings{
    protected int[] cost= new int[5];// (lumber, grain, wool, brick)
    protected int[] color;// bgm numbers to 255 (red val, green val, blue val)

    public Buildings(){
	setCost(1,1,1,1,1);
	setColor(255,0,0);
    }
    
    public int[] getCost(){
	return cost;
    }

    public void setCost(int lumber, int grain, int wool, int brick, int ore){
	cost[0]=lumber;
	cost[1]=grain;
	cost[2]=wool;
	cost[3]=brick;
	cost[4]=ore;
    }

    public int[] getColor(){
	return color;
    }

    public void setColor(int red, int green, int blue){
	color[0]=red;
	color[1]=green;
	color[2]=blue;
    }

    abstract boolean check();
}
