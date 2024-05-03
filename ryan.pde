class Ryan_character{
  Ryan_character(){
    x=random(width);
    y=random(height);
    d=50;
    vx=random(2,4);
    vy=random(-3,-1);
    
  };
  Ryan_character(float a,float b){
    x=width/2;
    y=a;
    d=b;
    vx=random(1,5);
    
  };
  
  float x,y,d,vx,vy;
  
  void move(){
    x+=vx;
    y+=vy;
    if(x>width||x<0)vx=-vx;
    if(y>height||y<0)vy=-vy;
    
  }
 void collide(Ryan_character ch1){
    float dd;
     dd=sqrt((x-ch1.x)*(x-ch1.x)+(y-ch1.y)*(y-ch1.y));
    if(dd<(d+ch1.d)/4){
      vx=-vx;
      vy=-vy;
      ch1.vx=-ch1.vx;
      ch1.vy=-ch1.vy;
    }
  }
   void Ryan() {
    fill(250, 180, 0);
    strokeWeight(4);
    circle(x-0.36*d, y-0.5*d, 0.3*d);    //라이언 왼쪽귀
    circle(x+0.36*d, y-0.5*d, 0.3*d);    //라이언 오른쪽귀
    circle(x, y, 1.2*d);    //라이언 얼굴
    strokeWeight(5);
    line(x-0.34*d, y-0.32*d, x-0.18*d, y-0.32*d);    //라이언 왼쪽눈썹
    line(x+0.18*d, y-0.32*d, x+0.34*d, y-0.32*d);    //라이언 오른쪽눈썹
    fill(0, 0, 0);    //라이언 왼쪽 눈
    circle(x-0.28*d, y-0.24*d, 0.04*d);
    fill(0, 0, 0);    //라이언 오른쪽 눈
    circle(x+0.28*d, y-0.24*d, 0.04*d);
    circle(x, y+0.06*d, 0.08*d);    //라이언 코
 strokeWeight(4);    //라이언 입
    fill(255);
    circle(x-0.05*d, y+0.15*d, 0.14*d);
    circle(x+0.05*d, y+0.15*d, 0.14*d);
    noStroke();
    circle(x, y+0.15*d, 0.1*d);    //가운데 선 없애기
    stroke(0);
    strokeWeight(0.5);
  }
}

