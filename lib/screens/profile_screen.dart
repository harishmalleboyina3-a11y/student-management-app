import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              const CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Balakotaiah",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Text(
                "Flutter Developer",
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 30),

              Card(
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email"),
                  subtitle: Text("student@gmail.com"),
                ),
              ),

              Card(
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone"),
                  subtitle: Text("+91 9876543210"),
                ),
              ),

              Card(
                child: ListTile(
                  leading: Icon(Icons.school),
                  title: Text("Course"),
                  subtitle: Text("Flutter Development"),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}