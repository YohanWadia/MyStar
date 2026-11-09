import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserListScreen(),
    );
  }
}

// 1. The Model Class (Our PODO / Plain Old Dart Object)
class User {
  final String avatarUrl;
  final String name;
  final String department;
  final IconData badgeIcon;

  User({
    required this.avatarUrl,
    required this.name,
    required this.department,
    required this.badgeIcon,
  });
}

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  // Our empty list waiting for users
  List<User> users = [];

 @override
  void initState() {
    super.initState();

    User objUser;

    // 1st user - Kids can change 'alice' to any word they want!
    objUser = User(
      avatarUrl: 'https://picsum.photos/id/64/100',
      name: 'Alice Johnson',
      department: 'Engineering',
      badgeIcon: Icons.admin_panel_settings,
    );
    users.add(objUser);

    // 2nd user
    objUser = User(
      avatarUrl: 'https://picsum.photos/seed/bob/100',
      name: 'Bob Smith',
      department: 'Sports & Rec',
      badgeIcon: Icons.sports_basketball,
    );
    users.add(objUser);

    // 3rd user
    objUser = User(
      avatarUrl: 'https://picsum.photos/id/237/100',
      name: 'Clara Oswald',
      department: 'Party Planning',
      badgeIcon: Icons.cake,
    );
    users.add(objUser);

    // 4th user
    objUser = User(
      avatarUrl: 'https://picsum.photos/seed/david/100',
      name: 'David Lee',
      department: 'Engineering',
      badgeIcon: Icons.admin_panel_settings,
    );
    users.add(objUser);

    // 5th user
    objUser = User(
      avatarUrl: 'https://picsum.photos/id/453/100',
      name: 'Eva Green',
      department: 'Sports & Rec',
      badgeIcon: Icons.sports_soccer,
    );
    users.add(objUser);

    // 6th user
    objUser = User(
      avatarUrl: 'https://picsum.photos/seed/frank/100',
      name: 'Frank Castle',
      department: 'Security',
      badgeIcon: Icons.security,
    );
    users.add(objUser);

    // 7th user
    objUser = User(
      avatarUrl: 'https://picsum.photos/seed/grace/100',
      name: 'Grace Hopper',
      department: 'Engineering',
      badgeIcon: Icons.computer,
    );
    users.add(objUser);

    // 8th user
    objUser = User(
      avatarUrl: 'https://picsum.photos/id/342/100',
      name: 'Hank Pym',
      department: 'Research',
      badgeIcon: Icons.science,
    );
    users.add(objUser);

    // 9th user
    objUser = User(
      avatarUrl: 'https://picsum.photos/seed/ivy/100',
      name: 'Ivy League',
      department: 'Party Planning',
      badgeIcon: Icons.cake,
    );
    users.add(objUser);

    // 10th user
    objUser = User(
      avatarUrl: 'https://picsum.photos/seed/jack/100',
      name: 'Jack Ryan',
      department: 'Security',
      badgeIcon: Icons.admin_panel_settings,
    );
    users.add(objUser);
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company Directory'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      // 3. Displaying the list using ListView.builder
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final userObj = users[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: 
            
            
            //============================================
            ListTile(
              // Property 1: Real photo in CircleAvatar
//               leading: CircleAvatar(            
//                 backgroundImage: NetworkImage(userObj.avatarUrl),
//               ),
              
//               // Property 2: Name and Department
//               title: Text(
//                 userObj.name,style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//               subtitle: Text(userObj.department),
              
//               // Property 3: Trailing Icon on the right
//               trailing: Icon(
//                 userObj.badgeIcon,
//               ),              
            ),
            
            //============================================
            
            
          );
        },
      ),
    );
  }
}
