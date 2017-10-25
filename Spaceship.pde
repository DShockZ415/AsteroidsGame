class Spaceship extends Floater  
{   
    public Spaceship()
    {
      myColor=255;
      corners=4;
      xCorners= new int[corners];
      yCorners= new int[corners];
      xCorners[0]=10;
      yCorners[0]=0;
      xCorners[1]=-7;
      yCorners[1]=-8;
      xCorners[2]=-4;
      yCorners[2]=0;
      xCorners[3]=-7;
      xCorners[3]=8;
      myCenterX=150;
      myCenterY=150;
      myDirectionX=myCenterX;
      myDirectionY=myCenterY;
      myPointDirection=(PI*2*Math.random());
    }
      public void setX(int x){myCenterX=x;}
      public int getX(){return myCenterX;}   
      public void setY(int y){myCenterY=y;}
      public int getY(){return myCenterY;} 
      public void setDirectionX(double x){myDirectionX=x;}
      public double getDirectionX(){return myDirectionX;}
      public void setDirectionY(double y){myDirectionY=y;}
      public double getDirectionY(){return myDirectionY;}
      public void setPointDirection(int degrees){myPointDirection=degrees;}  
      public double getPointDirection(){return myPointDirection;}
      
}