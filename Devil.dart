import 'dart:math';

Future<void> main() async {
  
  Random rnd = Random();

  int x = rnd.nextInt(10);
  print(x);
  
  
  
  
  
  
  for(int i=0; i<10;i++){   
    x=rnd.nextInt(10);

    print("$i ... $x");    

  }



}
