Spaceship lel= new Spaceship(); //your variable declarations here
public void setup() 
{
  size(300,300);
}
public void keyTyped()
{
  if(key == 'j')
  {
   lel.setDirectionX(0);
   lel.setDirectionY(0);
  }
}
public void draw() 
{
  lel.show();
}