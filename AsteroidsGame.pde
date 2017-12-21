Stars[] star= new Stars[100];
Spaceship lel= new Spaceship();
ArrayList<Asteroid> kek= new ArrayList<Asteroid>();
ArrayList<Bullet> lul= new ArrayList<Bullet>();
int lulColor;
public void setup() 
{
  size(500,500);
  background(0);
  for(int i=0;i<star.length;i++)
  {
    star[i]=new Stars();
  }
  for(int i=0;i<20;i++)
  {
    kek.add(i, new Asteroid());
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
  if (key=='k'||key=='K') {
    lulColor=color(255,0,0);
    lul.add(new Bullet());
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
  for(int a=0;a<kek.size();a++)
  {
    double d= dist(lel.getX(),lel.getY(),kek.get(a).getX(),kek.get(a).getY());
    if(d<=10)
    kek.remove(a);
  }
  for (int i = 0; i < lul.size(); i++) {
    lul.get(i).move();
    lul.get(i).show();
  }
  for(int m=0;m<kek.size()-1;m++)
  {
  for(int n=0;n<lul.size();n++)
    {
      double e=dist(kek.get(m).getX(),kek.get(m).getY(),lul.get(n).getX(),lul.get(n).getY());
      if(e<=10)
      {kek.remove(m);
      break;
      }
    }
}
  lel.move();
  lel.show();
}