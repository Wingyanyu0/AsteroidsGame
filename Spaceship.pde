class Spaceship extends Floater  
{   
 public Spaceship(){
     corners = 4;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = -8;
     yCorners[0] = -8;
     xCorners[1] = 16;
     yCorners[1] = 0;
     xCorners[2] = -8;
     yCorners[2] = 8;
     xCorners[3] = -2;
     yCorners[3] = 0;
     myColor = color(255); 
     myCenterX = 250;
     myCenterY = 250; 
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = 0;
}
public void setX(int x){
   myCenterX = x;
 }
   public int getX(){
    return (int)myCenterX;
   }
 
 public void setY(int y){
   myCenterY = y;
 }
    public int getY(){
     return (int)myCenterY;
   }
 public void setXspeed(double x){
  myXspeed = x;
 }
  public int getXspeed(){
     return (int)myXspeed;
}
 public void setYspeed(double y){
  myYspeed = y;
 }
    public int getYspeed(){
     return (int)myYspeed;
}
public void setPointDirection(int q){
  myPointDirection = q;
}
public int getPointDirection(){
  return (int)myPointDirection;
}
 public void hyperspace(){
   myCenterX = (int)(Math.random()*500);
   myCenterY = (int)(Math.random()*500);
   myPointDirection = (int)(Math.random()*360);
 }
 }
