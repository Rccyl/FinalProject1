public class Settlements extends Facilities{

    public Settlements(int rCred, int rCgreen, int rCblue){
	setCost(1,1,0,0,0);
	setColor(rCred,rCgreen,rCblue);
    }
    
    public Settlements(){
	setCost(1,1,0,0,0);
	setColor(255,0,0);
    }
    
    //check function inherited from facilities

}
