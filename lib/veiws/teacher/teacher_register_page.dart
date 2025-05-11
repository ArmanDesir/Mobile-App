import 'package:flutter/material.dart';

class TeacherRegisterPage extends StatelessWidget {
  const TeacherRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Teacher Registration')),
      body: Center(
        child: Text(
          'Teacher Registration Form Goes Here',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
