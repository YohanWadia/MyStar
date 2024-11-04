void main() {
  
  String name = "Yohan";
  String lastName = "Wadia";
  print("My name is name"); //use $
  
  int age = 10;
  print("name is age years old");
  
  print("=============================Concatenation OR Joining");
  //String fullName = name + lastName;
  //print(fullName); //correct space
  
  
  print("=============================Upper/Lower Case");
  
  // print(fullName.toUpperCase());
  // print(fullName);//doesnt change
  // fullName = fullName.toUpperCase();
  // print(fullName);
  // print(fullName.toLowerCase());
  
  print("=============================Length ");
  // print(fullName.length);
  // int len = fullName.length;
  // print("Your full name fullName has len characters");
  // String nothing = "";
  // //what is its length
  // print(nothing.isEmpty);
  
  print("============================= Trim");  
  // String password = "   abcd   ";
  // print(password.trim());
  // print(password);//doesnt change unless resaved to password  
  // print(password.trimLeft());
  // print(password.trimRight());
  
  print("============================= Replace");
  // password = password.replaceAll("abcd","wxyz");
  // print(password);
  // String greeting = "Hello, how are you? And Who are you?";
  // print(greeting.replaceAll("h", "X"));
  
    
  print("=============================Index Of ");
  // String letters= 'abcdefghijklmnopqrstuvwxyz';
  // print(letters.indexOf('a'));//index of 1st character
  // print(letters.indexOf('j'));//index of 10th alphabet?
  // print(letters.indexOf('z'));//dynamically always get the index of the last letter?
  // print(greeting.indexOf('you'));//how to get the next you in the sentence?
  
  
  
  print("=============================Character At ");  
  // print(letters[0]);//first character
  // print(letters[10]);//how to get the 10th alphabet?
  // print(letters[26]);//correct error?
  //How to dynamically always get the last letter?!


   print("=============================String from a Characters Code ");  
  // https://www.ascii-code.com/
  int i=97;
  print(String.fromCharCode(i));

  
  
  
   print("=============================Substring ");  
  // print(letters.substring(0,4));
  // print(letters.substring(20,26));
  
  
  
  
  
  print("============================= Split ");
  //only after arrays
  
  // String week = "Mon - Tue - Wed - Thu - Fri - Sat - Sun";
  // print(week.split('-'));
  
  
  
  
  
  
  
}
