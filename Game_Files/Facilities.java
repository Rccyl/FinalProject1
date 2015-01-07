import java.lang.*;

public class Facilities extends Buildings{
    
    public Facilities(int rCred, int rCgreen, int rCblue){
	setCost(1,1,1,1,1);
	setColor(rCred,rCgreen,rCblue);
    }

    public Facilities(){
	setCost(1,1,1,1,1);
	setColor(0,0,255);
    }

    public boolean check(){
	
    }

}