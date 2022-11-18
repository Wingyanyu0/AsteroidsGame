class Star{ 
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void show(){
    fill(242,247,198);
    ellipse(myX,myY,3,3);
  }
}
