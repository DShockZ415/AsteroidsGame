class Bullet extends Floater {
  public Bullet() {
    myCenterX = lel.myCenterX;
    myCenterY = lel.myCenterY;
    myPointDirection = lel.myPointDirection;
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX = 10 * Math.cos(dRadians) + lel.myDirectionX;
    myDirectionY = 10 * Math.sin(dRadians) + lel.myDirectionY;
  }

  public void show() {
    stroke(lulColor);
    strokeWeight(7);
    point((float)myCenterX, (float)myCenterY);
    strokeWeight(1);
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

  public void move() {
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
  }
}