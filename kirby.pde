class kirby_character{
  kirby_character(){
    x=random(width);
    y=random(height);
    d=50;
    vx=random(1,3);
    vy=random(2,4);
  };
  kirby_character(float p,float q,float r){
    x=p;
    y=q;
    d=r;
    vx=random(1,3);
    vy=random(-3,-1);
  }
  float x,y,d,vx,vy;
  void move(){
    x+=vx;
    y+=vy;
    if(x>width||x<0)vx=-vx;
    if(y>height||y<0)vy=-vy;
  }
  void collide(kirby_character ch2){
    float dd;
     dd=sqrt((x-ch2.x)*(x-ch2.x)+(y-ch2.y)*(y-ch2.y));
 if(dd<(d+ch2.d)/4){
      vx=0;
      vy=0;
      ch2.vx=0;
      ch2.vy=-0;
    }
  }
  void kirby(){
    fill(255, 0, 102); //왼발
 arc(x-0.25*d, y+0.5*d, 0.5*d, 0.75*d, 0, PI );
 
 fill(255, 204, 255); //얼굴
 stroke(255, 204, 255);
 circle(x, y, 1.4*d);
 arc(x+0.5*d, y-0.1*d, 1.4*d, 0.5*d, 0, PI/2);
 arc(x+0.5*d, y-0.1*d, 1.4*d, 0.5*d, 3* PI/2, 2*PI);
 ellipse(x-0.5*d, y-0.5*d, 0.5*d, 0.95*d);
 fill(255, 0, 102); //오른발
 stroke(0);
 ellipse(x+0.4*d, y+0.5*d, 0.5*d, 0.75*d);
 
 fill(0); //눈
 ellipse(x-0.25*d, y-0.25*d, 0.2*d, 0.35*d-2);
 ellipse(x+0.25*d, y-0.25*d, 0.2*d, 0.35*d-2);
 fill(255);
 stroke(0);
 ellipse(x-0.25*d, y-0.35*d, 0.1*d, 0.15*d+4);
 ellipse(x+0.25*d, y-0.35*d, 0.1*d, 0.15*d+4);
 
 fill(255, 0, 51); //입
 stroke(0);
 arc(x, y, 0.4*d, 0.5*d, 0, PI );
 
 fill(255, 51, 102); //볼
 ellipse(x-0.5*d, y, 0.2*d, 0.1*d);
 ellipse(x+0.5*d, y, 0.2*d, 0.1*d);
  }
}

