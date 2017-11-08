class Asteroid extends Floater
{
  private int rotSpeed;
  public Asteroid()
  {
    rotSpeed=(int)((Math.random()*6)-3);
    myColor=255;
    corners=7;
    xCorners=new int[corners];
    yCorners=new int[corners];
    xCorners[0]=0;
    yCorners[0]=-20;
    xCorners[1]=20;
    yCorners[1]=-16;
    xCorners[2]=12;
    yCorners[2]=0;
    xCorners[3]=0;
    yCorners[3]=12;
    xCorners[4]=-12;
    yCorners[4]=12;
    xCorners[5]=-16;
    yCorners[5]=4;
    xCorners[6]=-12;
    yCorners[6]=-12;
    myCenterX=100;
    myCenterY=100;
    myDirectionX=Math.random()*5;
    myDirectionY=Math.random()*5;
    myPointDirection=270;
  }
  public void setX(int x){myCenterX=x;}
  public int getX(){return (int)myCenterX;}   
  public void setY(int y){myCenterY=y;}
  public int getY(){return (int)myCenterY;} 
  public void setDirectionX(double x){myDirectionX=x;}
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY=y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection=degrees;}  
  public double getPointDirection(){return myPointDirection;}
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
}
    

    