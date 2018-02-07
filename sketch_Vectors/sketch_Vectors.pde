Ball MovingBalls = new Ball();

void setup()
{
  fullScreen();
  colorMode(HSB);
}

void draw()
{
  //background(0);
  MovingBalls.Render();
  MovingBalls.Collide();
  MovingBalls.Color();
}