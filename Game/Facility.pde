import java.lang.*;

class Facility extends Building{
    protected int[] production;  
  
    Facility(int rCred, int rCgreen, int rCblue){
	setCost(1,1,1,1,1);
	setColor(rCred,rCgreen,rCblue);
    }

    Facility(){
	setCost(1,1,1,1,1);
	setColor(0,0,255);
    }

}
