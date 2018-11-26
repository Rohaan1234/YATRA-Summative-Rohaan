PImage River;
float RiverX=400;
float RiverY=400;
PImage Raft;
float RaftX=370;
float RaftY=450;
PImage Finish;
float GoldX=500;
float GoldY=750;

void setup()
{
  imageMode(CENTER);
  size(800, 800);
 River = loadImage("River.jpg");
  River.resize(800, 800);
  Raft = loadImage("Raft.gif");
Raft.resize(100, 100);
 
  Finish=loadImage("Flag.png");
 Finish.resize(100, 100);
}


void draw()
{
  image(River, RiverX, RiverY);

  image(Raft, RaftX, RaftY);

  

  image(Finish, GoldX, GoldY);

if(RaftX>400)
{
  background(0);
  text("Failure, remember not to touch the walls and that there are unknown rapids", 100,400);
  
}
if(RaftX<340)
{ background(0);
  text("Failure, remember not to touch the walls and that there are unknown rapids", 100,400);
  
}
  if (dist(GoldX, GoldY, RaftX, RaftY)< 100)
  {
    background(0);
    text("Congrats Rafter!", 100, 400);
  }

  
}


void keyPressed()
{
  if ( key =='w' || key == 'W')
  {
    RaftY=RaftY-5;
  }
  if (key == 'a' || key == 'A')
  {
    RaftX=RaftX-5;
   
  }
  if (key == 'd' || key == 'D')
  {
   RaftX=RaftX+5;
  }
  if (key == 's' || key == 'S')
  {
  RaftY=RaftY+5;
  }
} 
