import 'package:casptone_1/veiws/Auth/get_started.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Math Learning App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: GetStartedPage(), // initial route
    );
  }
}
