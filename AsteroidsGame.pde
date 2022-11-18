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
  if(key == 'a' || key == 'A')
  ryan.turn(10);
  if(key == 'd' || key == 'D')
  ryan.turn(-10);
  if(key == 'w' || key == 'W')
  ryan.accelerate(1);
  if(key == 'd' || key == 'D')
  ryan.accelerate(-1);
  if(key == 'h' || key == 'H'){
  ryan.setXspeed(0);
  ryan.setYspeed(0);
}
}

