public class Roads extends Buildings{

    //note rCred is road color red (and same for green and blue)
    public Roads(int rCred, int rCgreen, int rCblue){
	setCost(1,1,0,0,0);
	setColor(rCred,rCgreen,rCblue);
    }
    
    public Roads(){
	setCost(1,1,0,0,0);
	setColor(255,0,0);
    }

}
