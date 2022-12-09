Spaceship ryan = new Spaceship(); 
Star[] nightSky = new Star[200];
ArrayList <Asteroid> rock = new ArrayList<Asteroid>();
ArrayList <Bullet> shots = new ArrayList<Bullet>();
public void setup() 
{
  size(500,500);
  for(int i = 0; i <  nightSky.length; i++){
    nightSky[i] = new Star(); 
  }
    for(int a = 0; a < 20; a++){
       rock.add(new Asteroid());
       rock.get(a).accelerate((int)(Math.random()*15)+1);
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
  for(int a = 0; a < rock.size(); a++){
    rock.get(a).show();
    rock.get(a).move();
   float d = dist(ryan.getX(), ryan.getY(), rock.get(a).getX(), rock.get(a).getY());
   if(d < 10)
   rock.remove(a);
   }
   for(int a = 0; a < shots.size(); a++){
     shots.get(a).move();
     shots.get(a).show();
   }
   for(int a = 0; a < shots.size(); a++){
   for(int p = 0; p < rock.size(); p++){
     float s = dist(shots.get(a).getX(), shots.get(a).getY(), rock.get(p).getX(), rock.get(p).getY());
     if(s < 20){
       rock.remove(p);
       shots.remove(a);
       break;
     }
   }
   }
  }
public void keyPressed(){
  if(key == 'a' || key == 'A')
  ryan.turn(10);
  if(key == 'd' || key == 'D')
  ryan.turn(-10);
  if(key == 'w' || key == 'W')
  ryan.accelerate(1);
  if(key == 's' || key == 'S')
  ryan.accelerate(-1);
  if(key == ' ')
  shots.add(new Bullet(ryan));
  if(key == 'h' || key == 'H'){
  ryan.setXspeed(0);
  ryan.setYspeed(0);
  ryan.hyperspace();
}
}
