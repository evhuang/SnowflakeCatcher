Snowflake [] blizzard;
void setup()
{
  //your code here
  size(700,700);
  background(0);
  blizzard = new Snowflake[25];
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
  fill(60,70,167);
  ellipse(mouseX,mouseY,14,14);
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
    y = 0;
    isMoving = true;
  }
  void show()
  {
    //your code here
    fill(255);
    ellipse(x,y,7,7);
  }
  void lookDown()
  {
    //your code here
    if((y > 0 && y < 700) || (get(x,y) != color(0,0,0)))
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
    if(y > 700)
      {
        y = 0;
        x = (int)(Math.random() * 700);
      }
  }
}
