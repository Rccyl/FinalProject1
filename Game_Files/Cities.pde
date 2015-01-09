public class Cities extends Facilities{
    
    public Cities(int rCred, int rCgreen, int rCblue){
      setCost(1,1,1,1,1);
      setColor(rCred,rCgreen,rCblue);
    }

    public Cities(){
      setCost(1,1,1,1,1);
      setColor(0,0,255);
    }
    
    //NOTE: no check function

}
