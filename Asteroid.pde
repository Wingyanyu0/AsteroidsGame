class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 8;
    xCorners = new int[]{-18, -10, 10, 18, 14, 10, -10, -14};
    yCorners = new int[]{-20, -10, -10, -20, 8, 13, 13, 8};
    myColor = color(102,101,103);
    rotSpeed = (int)(Math.random()*10);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
  }
  public void move(){
    turn(rotSpeed);
    super.move();
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
}
