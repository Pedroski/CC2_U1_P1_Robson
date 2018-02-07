class Ball
{
  PVector Position;
  PVector Position2;
  PVector Position3;
  PVector Position4;
  PVector Mouse;
  PVector Direction;
  PVector Velocity;
  PVector Acceleration;
  float speed;
  float topspeed;
  float count;
  float colVal;

  Ball()
  {
    Position = new PVector(200, height-200);
    Position2 = new PVector(200, 200);
    Position3 = new PVector(width-200, 200);
    Position4 = new PVector(width-200, height-200);
    Mouse = new PVector(0, 0);
    Direction = new PVector(0, 0);
    Velocity = new PVector(0, 0);
    Acceleration = new PVector(0, 0);
    speed = 5;
    topspeed = random(3, 12);
    count = 12;
    colVal = 0;
  }

  void Render()
  {
    fill(0, 10);
    rect(0, 0, width, height);
    if ( mousePressed )
    {
      Mouse = new PVector(mouseX, mouseY);
      Direction = PVector.sub(Mouse, Position);
      Direction = PVector.sub(Mouse, Position2);
      Direction = PVector.sub(Mouse, Position3);
      Direction = PVector.sub(Mouse, Position4);
      speed = Direction.mag();
      Direction.normalize();
      Direction.mult(speed/100);
    }
    Position.add(Direction);
    Position2.add(Direction);
    Position3.add(Direction);
    Position4.add(Direction);
    fill(colVal, 255, 255);
    ellipse(Position.x, Position.y, 20, 20);
    fill(colVal, 255, 255);
    ellipse(Position2.x, Position2.y, 20, 20);
    fill(colVal, 255, 255);
    ellipse(Position3.x, Position3.y, 20, 20);
    fill(colVal, 255, 255);
    ellipse(Position4.x, Position4.y, 20, 20);
  }

  void Collide()
  {
    if ( Position.x > width )
    {
      //speed = speed * -1;
      //Direction.normalize();
      Direction.x*=-1;
    }
    if ( Position.x < 0 )
    {
      //speed = speed * -1;
      //Direction.normalize();
      Direction.x*=-1;
    }
    if ( Position.y > height )
    {
      //speed = speed * -1;
      //Direction.normalize();
      Direction.y*=-1;
    }
    if ( Position.y < 0 )
    {
      //speed = speed * -1;
      //Direction.normalize();
      Direction.y*=-1;
    }
  }
  void Color()
  {
    colVal++;
  if( colVal > 255 )
  {
    colVal = 0;
  }
  }
}