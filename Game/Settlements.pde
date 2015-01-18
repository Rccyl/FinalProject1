class Settlement extends Facility{

    Settlement(int rCred, int rCgreen, int rCblue){
	setCost(1,1,0,0,0);
	setColor(rCred,rCgreen,rCblue);
    }
    
    Settlement(){
	setCost(1,1,0,1,0);
	setColor(255,0,0);
    }

}
