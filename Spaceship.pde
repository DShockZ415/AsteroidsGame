class Spaceship extends Floater  
{   
    public Spaceship()
    {
      myColor=255;
      corners=4;
      xCorners= new int[corners];
      yCorners= new int[corners];
      xCorners[0]=-7;
      yCorners[0]=-8;
      xCorners[1]=10;
      yCorners[1]=0;
      xCorners[2]=-7;
      yCorners[2]=8;
      xCorners[3]=-4;
      xCorners[3]=0;
      myCenterX=150;
      myCenterY=150;
      myDirectionX=0;
      myDirectionY=0;
      myPointDirection=(PI*2*Math.random());
    }
      public void setX(int x){myCenterX=x+1;}
      public int getX(){return (int)myCenterX;}   
      public void setY(int y){myCenterY=y;}
      public int getY(){return (int)myCenterY;} 
      public void setDirectionX(double x){myDirectionX=x;}
      public double getDirectionX(){return myDirectionX;}
      public void setDirectionY(double y){myDirectionY=y;}
      public double getDirectionY(){return myDirectionY;}
      public void setPointDirection(int degrees){myPointDirection=degrees;}  
      public double getPointDirection(){return myPointDirection;}
      
}