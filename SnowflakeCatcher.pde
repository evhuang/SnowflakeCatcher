Snowflake [] blizzard;
void setup()
{
  //your code here
  size(500,500);
  fill(0);
  rect(-100,-100,5000,5000);
  blizzard = new Snowflake[200];
  for(int i = 0; i < blizzard.length; i++)
    {
      blizzard[i] = new Snowflake();
    }
}
void draw()
{
  //your code here
  for(int i = 0; i < blizzard.length; i++)
  {
    blizzard[i].erase();
    blizzard[i].lookDown();
    blizzard[i].move();
    blizzard[i].wrap();
    blizzard[i].show();
  }
}
void mouseDragged()
{
  //your code here
  if(mouseButton==LEFT)
  {
    fill(60,70,167);
    ellipse(mouseX,mouseY,15,15);
  }
  else if(mouseButton==RIGHT)
  {
    fill(0,0,0);
    ellipse(mouseX,mouseY,20,20);
  }
}

class Snowflake
{
  //class member variable declarations
  int x, y;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random() * 500);
    y = (int)(Math.random() * -500);
    isMoving = true;
  }
  void show()
  {
    //your code here
    noStroke();
    fill(255,255,255);
    ellipse(x,y,8,8);
  }
  void lookDown()
  {
    //your code here
    if(y < 500 && y > 0  && get(x,y + 6) != color(0,0,0))
      {
        isMoving = false;
      }
    else 
      {
        isMoving = true;
      }
  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(x,y,12,12);
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
    if(y >= 490)
      {
        y = 10;
        x = (int)(Math.random() * 500);
      }
  }
}
