/* please implement your assign1 code in this file. */
  //set memory storage
    PImage bg1;
    PImage bg2;
    PImage enemy;
    PImage fighter;
    PImage hp;
    PImage treasure;
    
  //set variables
    int fighterY,treasureX,treasureY,enemyX,enemyY,bg1X,bg2X,hpvolume;




void setup () {
  size(640,480) ;  // must use this size.
  // your code
    //load all images
      bg1=loadImage("img/bg1.png");
      bg2=loadImage("img/bg2.png");
      enemy=loadImage("img/enemy.png");
      fighter=loadImage("img/fighter.png");
      hp=loadImage("img/hp.png");
      treasure=loadImage("img/treasure.png");
  
    //define variables values
      fighterY=floor(random(0,450));
      treasureX=floor(random(20,600));  treasureY=floor(random(20,450));
      enemyX=-61;  enemyY=floor(random(50,430)); 
      bg1X=0;
      hpvolume=floor(random(50,200));
}



void draw() {
  // your code
  
  //backgrounds repetitive
    image(bg1,bg1X,0);
            bg1X++;bg1X%=1280;
    image(bg2,bg1X-640,0);
            bg2X++;
    image(bg1,bg1X-1280,0);

          
  //fighter location
    image(fighter,580,fighterY);
  
  //enemy location and movement
    image(enemy,enemyX,enemyY);
          enemyX+=3;
          enemyX=enemyX%=640;
    
  //life bar location and volume
    fill(255,0,0);
    rect(20,25,hpvolume,20);
    image(hp,20,20);
  
  //treasure location
    image(treasure,treasureX,treasureY);
}
