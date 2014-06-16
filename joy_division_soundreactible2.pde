import ddf.minim.*;

Minim minim;
AudioInput in;
float v = 0;
float vv = 0;
float angle = 0;

void setup()
{
  size(720, 576);
smooth();
  minim = new Minim(this);
  in = minim.getLineIn();
}


void draw()
{
  angle += 0.01;
  background(0, 50);
  stroke(255);
      pushMatrix();
    translate(width/2, height/2);

  for (int i = 0; i < 10; i++)  //in.bufferSize() - 1
  {
    
    for (int ii=0;ii<=20;ii++) {
      v = random(-1, 1);
      vv = random(-1, 1);
      stroke(191, 75+50*sin(angle*random(-0.1, 0.1)));
      strokeWeight(1);
      ellipse(random(-width/2, width/2), random(-height/2, height/2), 1, 1);
      ellipse(random(-width/2, width/2), random(-height/2, height/2), 1, 1);
      stroke(255, 75+50*sin(angle*random(-0.1, 0.1)));
      strokeWeight(1);
      ellipse(in.right.get(i)*1000*v, in.left.get(i)*500*vv, 1, 1);
      line(0,0,in.right.get(i)*1000*v, in.left.get(i)*500*vv);
   }  
}
popMatrix();
}
