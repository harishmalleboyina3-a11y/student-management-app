import 'package:flutter/material.dart';
import '../models/student.dart';

class StudentDetailsScreen extends StatelessWidget {
  const StudentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final student =
        ModalRoute.of(context)!
            .settings
            .arguments as Student;

    return Scaffold(
      appBar: AppBar(
        title: Text(student.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [

            CircleAvatar(
              radius: 50,
              backgroundImage:
                  NetworkImage(student.image),
            ),

            SizedBox(height: 20),

            Text(
              student.name,
              style: TextStyle(
                fontSize: 25,
              ),
            ),

            Text("Age: ${student.age}"),

            Text("Course: ${student.course}"),
          ],
        ),
      ),
    );
  }
}