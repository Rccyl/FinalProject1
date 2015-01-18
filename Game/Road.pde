class Road extends Building{

    //note rCred is road color red (and same for green and blue)
    Road(int rCred, int rCgreen, int rCblue){
	setCost(1,1,0,0,0);
	setColor(rCred,rCgreen,rCblue);
    }
    
    Road(){
	setCost(1,0,0,0,1);
	setColor(255,0,0);
    }

}
