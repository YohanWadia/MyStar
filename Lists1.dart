Future<void> main() async {
  
  List<int> marks = [12,8,44,13,9,23,35,62,77,55];

  List<String> names = ["Aug","Greta","Vilus","Olivia","Linas","Jekubas","Vytis","Rokas","Herkus","Rokas"];


  for(int i=0; i<10;i++){
    
    print("at index $i is ");


  }


  //add
  for(int i=0; i<10;i++){ 

    //print("at index $i is ");
  }


  //remove
  //marks.remove()
  //marks.removeAt()
  for(int i=0; i<10;i++){    

    //print("at index $i is ");
  }

  //manupilate
  //remove
  for(int i=0; i<10;i++){    

 //print("at index $i is ");
  }







}


[https://picsum.photos/200/200?image=200, https://picsum.photos/200/200?image=201, https://picsum.photos/200/200?image=202, https://picsum.photos/200/200?image=203, https://picsum.photos/200/200?image=204, https://picsum.photos/200/200?image=205, https://picsum.photos/200/200?image=206, https://picsum.photos/200/200?image=207, https://picsum.photos/200/200?image=208, https://picsum.photos/200/200?image=209]

class Student {
  final String name;
  final int mark;
  final String imgUrl;

  Student({
    required this.name,
    required this.mark,
    required this.imgUrl,
  });
}



 // Placeholder data initialization
final List<Student> students = [
  Student(name: "Aug", mark: 12, imgUrl: "https://picsum.photos/200/200?image=200"),
  Student(name: "Greta", mark: 8, imgUrl: "https://picsum.photos/200/200?image=201"),
  Student(name: "Vilus", mark: 44, imgUrl: "https://picsum.photos/200/200?image=202"),
  Student(name: "Olivia", mark: 13, imgUrl: "https://picsum.photos/200/200?image=203"),
  Student(name: "Linas", mark: 9, imgUrl: "https://picsum.photos/200/200?image=204"),
];




 import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StudentListView(),
    );
  }
}

// 1. Student Data Model (as defined above)
class Student {
  final String name;
  final int mark;
  final String imgUrl;

  Student({required this.name, required this.mark, required this.imgUrl});
}

// 2. Data Initialization
final List<Student> students = [
  Student(name: "Aug", mark: 12, imgUrl: "https://picsum.photos/200/200?image=200"),
  Student(name: "Greta", mark: 8, imgUrl: "https://picsum.photos/200/200?image=201"),
  Student(name: "Vilus", mark: 44, imgUrl: "https://picsum.photos/200/200?image=202"),
  Student(name: "Olivia", mark: 13, imgUrl: "https://picsum.photos/200/200?image=203"),
  Student(name: "Linas", mark: 9, imgUrl: "https://picsum.photos/200/200?image=204"),
  // ... add your full list here
];


class StudentListView extends StatelessWidget {
  const StudentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Marks and Photos'),
      ),
      // The core List Builder widget
      body: ListView.builder(
        // Tell the builder how many items to create
        itemCount: students.length,
        
        // This function is called for every item index
        itemBuilder: (context, index) {
          // Get the specific student object for this index
          final student = students[index];
          
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Card(
              elevation: 4, // Adds a nice shadow
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                // 1. Title: Student's name
                title: Text(
                  student.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                // 2. Subtitle: Student's mark
                subtitle: Text('Mark: ${student.mark}'),
                
                // 3. Trailing: Circular image on the right
                trailing: CircleAvatar(
                  radius: 25,
                  // Use NetworkImage to fetch the image from the URL
                  backgroundImage: NetworkImage(student.imgUrl),
                  // Fallback for when the image is loading/fails
                  child: student.mark < 20 
                    ? const Icon(Icons.warning, color: Colors.red) 
                    : null,
                ),
                
                // Optional: A small icon on the left (Leading)
                leading: const Icon(Icons.person),
                
                // Optional: Action on tap
                onTap: () {
                  // print('Tapped on ${student.name}');
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

 


