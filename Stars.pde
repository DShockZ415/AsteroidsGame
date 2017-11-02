class Stars //note that this class does NOT extend Floater
{
  private int myX,myY,colour,colour2,colour3;
  public Stars()
  { colour=(int)(Math.random()*255);
    colour2=(int)(Math.random()*255);
    colour3=(int)(Math.random()*255);
    myX=(int)(Math.random()*500);
    myY=(int)(Math.random()*500);
  }
  public void show()
  {
    noStroke();
    fill(colour,colour2,colour3);
    ellipse(myX,myY,5,5);
  }
}