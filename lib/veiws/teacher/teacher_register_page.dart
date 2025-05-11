import 'package:flutter/material.dart';

class TeacherRegisterPage extends StatelessWidget {
  const TeacherRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign up as a Teacher')),
      body: Center(
        child: Text('Teacher RegistratHere', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
