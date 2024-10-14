void main() {
  
  int age = 10;
  int ageLimit = 12;
  String status="";
  
  
  if (age<ageLimit){
    status = "child is Allowed";
  }
  else{
    status = "child is NOT allowed";
  }
  
  print(status);
  
  
  print("=====================");
  
  
  status = (age<ageLimit)? "child is Allowed" : "child is NOT allowed";
  print(status);
  
  
  
}
