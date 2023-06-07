// y = 15*sin(x)/x + 4

int r = 500;
int cnt = 0, circleCnt = 0;
float functionArea = 0;
boolean drawFunction = false;

void setup()
{
  size(500, 500);
  strokeWeight(5);
  background(255);
  frameRate(1000);
}

void draw()
{
  if(!drawFunction) {
    stroke(0);
    fill(255, 255);
    for(float x = 0.01; x < 20; x += 0.01) {
      float y = map(15*sin(x)/x + 4, 0, 20, height, 0);
      point(x * width / 20, y);
    }
    drawFunction = true;
  }

  float x = random(width);
  float y = random(height);
  if(y > map(15*sin(x * 20 / width)/(x * 20 / width) + 4, 0, 20, height, 0)) {
    stroke(0, 255, 0);
    circleCnt++;
  }
  else if(y < map(15*sin(x * 20 / width)/(x * 20 / width) + 4, 0, 20, height, 0)){
    stroke(255, 0, 0);
  }
  else {
    stroke(0);
  }
  point(x, y);
  println((float)circleCnt/frameCount*400);
}
