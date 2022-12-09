class Bullet extends Floater{
  Bullet(Spaceship theShip){
     myColor = ((int)(Math.random()*255)); 
     myCenterX = ryan.getX();
     myCenterY = ryan.getY(); 
     myXspeed = ryan.getXspeed();
     myYspeed = ryan.getYspeed();
     myPointDirection = ryan.getPointDirection();
     accelerate(.6);
  }
  public void show(){
    fill(255);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public void move(){
    myCenterX += myXspeed;
    myCenterY += myYspeed;
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
 public void setXspeed(double x){
  myXspeed = x;
}
 public void setYspeed(double y){
  myYspeed = y;
}
public void setPointDirection(int q){
  myPointDirection = q;
}
}
