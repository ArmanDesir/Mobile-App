import 'package:casptone_1/veiws/student/exercises.dart';
import 'package:casptone_1/veiws/student/lessons.dart';
import 'package:casptone_1/veiws/student/progress.dart';
import 'package:casptone_1/veiws/student/quizzess.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget _selectedScreen = const StudentDashboard() as Widget;

  void _navigateTo(Widget screen) {
    setState(() {
      _selectedScreen = screen;
    });
    Navigator.pop(context); // Close drawer
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Student Dashboard"),
          centerTitle: true,
        ),
        drawer: Drawer(
          backgroundColor: Colors.redAccent,
          child: ListView(
            children: [
              const DrawerHeader(
                child: Text(
                  'Student Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                title: const Text('Lessons'),
                onTap: () => _navigateTo(const StudentLessons()),
              ),
              ListTile(
                title: const Text('Exercises'),
                onTap: () => _navigateTo(const StudentExercises()),
              ),
              ListTile(
                title: const Text('Quizzes'),
                onTap: () => _navigateTo(const StudentQuizzes()),
              ),
              ListTile(
                title: const Text('Progress'),
                onTap: () => _navigateTo(const StudentProgress()),
              ),
            ],
          ),
        ),
        body: _selectedScreen,
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}

class StudentDashboard {
  const StudentDashboard();
}
