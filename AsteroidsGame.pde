 //your variable declarations here
Stars[] star= new Stars[100];
Spaceship lel= new Spaceship();
ArrayList<Asteroid> kek= new ArrayList<Asteroid>();
public void setup() 
{
  size(500,500);
  background(0);
  for(int i=0;i<star.length;i++)
  {
    star[i]=new Stars();
  }
  for(int i=0;i<5;i++)
  {
    kek.add(i, new Asteroid());
  }
  for(int a=0;a<kek.size();a++)
  {
    double d= dist(lel.getX(),lel.getY(),kek.get(a).getX(),kek.get(a).getY());
    if(d<10)
    kek.remove(a);
  }
}
public void keyTyped()
{
  if(key == 'j' || key == 'J')
  {
   lel.setDirectionX(0);
   lel.setDirectionY(0);
   lel.setPointDirection((int)(Math.random()*361));
   lel.setX((int)(Math.random()*500));
   lel.setY((int)(Math.random()*500));
  }
  if(key=='d'||key=='D')
  {
    lel.turn(13);
  }
  if(key=='a'||key=='A')
  {
    lel.turn(-13);
  }
  if(key=='w'||key=='W')
  {
    lel.accelerate(.7);
  }

}
public void draw() 
{
  background(0);
  for(int i=0;i<star.length;i++)
  {
    star[i].show();
  }
  for(int i=0;i<kek.size();i++)
  {
    kek.get(i).show();
    kek.get(i).move();
  }
  lel.move();
  lel.show();
}