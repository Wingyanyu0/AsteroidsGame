Spaceship ryan = new Spaceship(); 
Star[] nightSky = new Star[200];
public void setup() 
{
  size(500,500);
  for(int i = 0; i <  nightSky.length; i++){
    nightSky[i] = new Star(); 
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < 200; i++)
  {
    nightSky[i].show();
  }
  ryan.move();
  ryan.show();
}
public void keyPressed(){
  if(key == 'a')
  ryan.turn(10);
  if(key == 'd')
  ryan.turn(-10);
  if(key == 'w')
  ryan.accelerate(1);
  if(key == 'd')
  ryan.accelerate(-1);
  if(key == 'h' || key == 'H'){
  ryan.setXspeed(0);
  ryan.setYspeed(0);
}
}

