import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/student_list_screen.dart';
import 'screens/student_details_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Student App',

      initialRoute: '/',

      routes: {
        '/': (context) =>
            const HomeScreen(),

        '/students': (context) =>
            const StudentListScreen(),

        '/details': (context) =>
            const StudentDetailsScreen(),

        '/profile': (context) =>
            const ProfileScreen(),

        '/settings': (context) =>
            const SettingsScreen(),
      },
    );
  }
}