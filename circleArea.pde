int r = 500;
int circleCnt = 0;
boolean drawCircle = false;

void setup()
{
  size(500, 500);
  strokeWeight(5);
  background(255);
  frameRate(1000);
}

void draw()
{
  if(!drawCircle) {
    stroke(0);
    fill(255, 255);
    ellipse(0, 0, 2 * r, 2 * r);
    drawCircle = true;
  }
  
  float x = random(width);
  float y = random(height);
  if(x * x + y * y < r * r) {
    stroke(0, 255, 0);
    circleCnt++;
  }
  else if(x * x + y * y > r * r){
    stroke(255, 0, 0);
  }
  else {
    stroke(0);
  }
  point(x, y);
  println((float)circleCnt/frameCount*4);
}
