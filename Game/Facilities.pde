import java.lang.*;

class Facilities extends Buildings{
    protected int[] production;  
  
    Facilities(int rCred, int rCgreen, int rCblue){
	setCost(1,1,1,1,1);
	setColor(rCred,rCgreen,rCblue);
    }

    Facilities(){
	setCost(1,1,1,1,1);
	setColor(0,0,255);
    }

}
