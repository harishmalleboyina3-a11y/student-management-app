import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Management App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              const SizedBox(height: 20),

              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                "Welcome Student",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                "Manage students, profile and settings",
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              Card(
                elevation: 5,
                child: ListTile(
                  leading: const Icon(
                    Icons.people,
                    size: 35,
                    color: Colors.blue,
                  ),
                  title: const Text(
                    "Student List",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle:
                      const Text("View all students"),
                  trailing:
                      const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/students',
                    );
                  },
                ),
              ),

              const SizedBox(height: 15),

              Card(
                elevation: 5,
                child: ListTile(
                  leading: const Icon(
                    Icons.person,
                    size: 35,
                    color: Colors.green,
                  ),
                  title: const Text(
                    "Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle:
                      const Text("View your profile"),
                  trailing:
                      const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/profile',
                    );
                  },
                ),
              ),

              const SizedBox(height: 15),

              Card(
                elevation: 5,
                child: ListTile(
                  leading: const Icon(
                    Icons.settings,
                    size: 35,
                    color: Colors.orange,
                  ),
                  title: const Text(
                    "Settings",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle:
                      const Text("Application settings"),
                  trailing:
                      const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/settings',
                    );
                  },
                ),
              ),

              const SizedBox(height: 30),

              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius:
                      BorderRadius.circular(12),
                ),
                child: const Column(
                  children: [
                    Icon(
                      Icons.school,
                      size: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Student Management System",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Manage student information efficiently using Flutter.",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}