Ryan_character [] ch1;
kirby_character [] ch2;
void setup(){
  size(800,600);
  ch1=new Ryan_character[10];
  for(int t=0;t<3;t++){
    ch1[t]=new Ryan_character(random(height),60);
    ch1[t].Ryan();
  }
  for(int t=3;t<10;t++){
      ch1[t]=new Ryan_character();
      ch1[t].Ryan();
    }
  
  ch2=new kirby_character[10];
  for(int t=0;t<5;t++){
    ch2[t]=new kirby_character();
    ch2[t].kirby();
  }
  for(int t=5;t<10;t++){
    ch2[t]=new kirby_character(random(width),random(height),random(10,50));
  }
}
void draw(){
   background(0,255,255);
 for(int t=0;t<10;t++){
   if(t!=9){
     for(int m=t+1;m<10;m++){
       ch1[t].collide(ch1[m]);
     }
   }
   ch1[t].move();
   ch1[t].Ryan();
 }
 for(int t=0;t<10;t++){
   if(t!=9){
     for(int m=t+1;m<10;m++){
       ch2[t].collide(ch2[m]);
     }
   }
   ch2[t].move();
   ch2[t].kirby();
 }
}
