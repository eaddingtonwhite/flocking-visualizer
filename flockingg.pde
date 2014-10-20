import ddf.minim.*;

Flock flock;
Minim minim;
AudioInput in;
float spud = 0;
void setup() {
  size(800,800);
  //frameRate(90);
  minim = new Minim(this);
  colorMode(RGB,255,255,255,100);
  in = minim.getLineIn();
  flock = new Flock();
  // Add an initial set of boids into the system

  for (int i = 0; i < 1000; i++) {
    flock.addBoid(new Boid(new Vector3D(width/2,height/2),1.0f,0.05f));
  }
  smooth();
}

void draw() {
  background(200);
  flock.run();
}

// Add a new boid into the System
void mousePressed() {
  fill(255,40,40);
  flock.addBoid(new Boid(new Vector3D(mouseX,mouseY),20.0f,0.05f));
}
