void reaver(float x, float y, float d){
  fill(255,255,0);
  circle(x-4*d,y-4*d,15*d);
  fill(99,204,255);
  circle(x-2*d,y-2*d,16.5*d);//body
  
  fill(255,255,0);
  circle(x,y,15*d); //face
  
  fill(255);
  circle(x-4*d,y-2*d,d);
  circle(x+4*d,y-2*d,d);//eyes
  
  fill(255,0,0);
  arc(x,y-d,2*d,4*d,0,PI);//mouth
   
}
