import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(home: StudentListScreen()));
}

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({super.key});

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  
  List<Student> myList = []; 
  
  
  
  @override
void initState() {
  super.initState();
  Student obj1 =  new Student("yohan", 100, 2.3, "https://picsum.photos/seed/51/200"); 
  Student obj2 =  new Student("Epstien", 45, 9, "https://picsum.photos/seed/52/200"); 
  Student obj3 =  new Student("Trump", 67, 7.1, "https://picsum.photos/seed/53/200"); 
  
  myList.add(obj1);
  myList.add(obj2);
  myList.add(obj3);

}

  @override
  Widget build(BuildContext context) {
    
    

    return Scaffold(
      appBar: AppBar(title: const Text("Class Directory")),
      body: 
      ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index) {
          final student = myList[index];
          
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              // The Image ID on the left
              leading: CircleAvatar(
                backgroundImage: NetworkImage(student.imageUrl),
              ),
              
              title: Text(student.name, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Age: ${student.age}"),
              
              // Displaying the GPA on the right
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("GPA", style: TextStyle(fontSize: 12, color: Colors.grey)),
                  Text(
                    student.gpa.toStringAsFixed(1),
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}








class Student {
  final String name;
  final int age;
  final double gpa;
  final String imageUrl;

  Student( this.name,this.age,this.gpa, this.imageUrl);
}
