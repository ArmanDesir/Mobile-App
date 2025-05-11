import 'package:flutter/material.dart';
import 'package:casptone_1/veiws/student/student_register_page.dart';
import 'package:casptone_1/veiws/teacher/teacher_register_page.dart';

class GetStartedPage extends StatelessWidget {
  final String teacherPasskey = "12345";

  const GetStartedPage({super.key});

  void _showPasskeyDialog(BuildContext context) {
    final TextEditingController passkeyController = TextEditingController();

    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: Text('Enter Passkey'),
            content: TextField(
              controller: passkeyController,
              obscureText: true,
              decoration: InputDecoration(hintText: 'Secret Passkey'),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close dialog
                },
                child: Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  if (passkeyController.text == teacherPasskey) {
                    Navigator.pop(context); // Close dialog
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => TeacherRegisterPage()),
                    );
                  } else {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text('Invalid passkey')));
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Get Started', style: TextStyle(fontSize: 32)),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => StudentRegisterPage()),
                  );
                },
                child: Text('I am a Student'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _showPasskeyDialog(context),
                child: Text('I am a Teacher'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
