void setup()
{
  //your code here
  size(700,700);
}
void draw()
{
  //your code here
}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
  //class member variable declarations
  int x, y;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random() * 700);
    y = (int)(Math.random() * 700);
    isMoving = true;
  }
  void show()
  {
    //your code here
  }
  void lookDown()
  {
    //your code here
    if(y > 0 && y < 700)
      {
        
      }
  }
  void erase()
  {
    //your code here
    fill(0,0,0);
    ellipse(mouseX,mouseY,7,7);
  }
  void move()
  {
    //your code here
    if(isMoving == true)
      {
        y++;
      }
  }
  void wrap()
  {
    //your code here
  }
}
