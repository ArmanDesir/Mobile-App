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
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  if (passkeyController.text == teacherPasskey) {
                    Navigator.pop(context);
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
      body: SafeArea(
        child: Column(
          children: [
            // Top image with fallback
            SizedBox(
              height: 325,
              width: double.infinity,
              child: Image.asset(
                'assets/images/school_seal.png',
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return Center(
                    child: Text(
                      'Image failed to load',
                      style: TextStyle(color: Colors.red),
                    ),
                  );
                },
              ),
            ),
            // Main content scrollable and centered
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to PracPro Math',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Choose your role to get started',
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                    SizedBox(height: 70),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => StudentRegisterPage(),
                          ),
                        );
                      },
                      child: Text(
                        'I am a Student',
                        style: TextStyle(color: Colors.black87, fontSize: 22),
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () => _showPasskeyDialog(context),
                      child: Text(
                        'I am a Teacher',
                        style: TextStyle(color: Colors.black87, fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
