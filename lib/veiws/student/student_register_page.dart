import 'package:flutter/material.dart';

class StudentRegisterPage extends StatelessWidget {
  const StudentRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Registration')),
      body: Center(
        child: Text(
          'Student Registration Form Goes Here',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
