import 'package:casptone_1/veiws/Auth/get_started.dart';
import 'package:flutter/material.dart';

void main() {
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
