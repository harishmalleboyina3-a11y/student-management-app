import 'package:flutter/material.dart';
import '../models/student.dart';

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({super.key});

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {

  final List<Student> students = [
    Student(
      name: "Rahul",
      age: 20,
      course: "Flutter",
      image:
          "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
    ),
  ];

  void addStudent() {
    setState(() {
      students.add(
        Student(
          name: "New Student ${students.length + 1}",
          age: 18,
          course: "Computer Science",
          image:
              "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
        ),
      );
    });
  }

  void deleteStudent(int index) {
    setState(() {
      students.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Students"),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: addStudent,
        child: const Icon(Icons.add),
      ),

      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {

          final student = students[index];

          return Card(
            margin: const EdgeInsets.all(10),

            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(student.image),
              ),

              title: Text(student.name),

              subtitle: Text(student.course),

              trailing: IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {
                  deleteStudent(index);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}