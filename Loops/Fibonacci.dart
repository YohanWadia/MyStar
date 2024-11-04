void main() {
  
  int prev = 0;
  int now = 1;
  print(prev);
  print(now);
  
  //String myLine="0,1";
  
  for (int i = 1; i <= 10; i++) {
    
   int total = prev + now;    
   print(total);
   
    prev = now;
    now = total;
    
  }
  
  //print(myLine);//0,1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89
  
}
