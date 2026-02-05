import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INFT 425 - Akpah Zadok Nana Kwasi',  // Replace [YOUR NAME HERE] with your name
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HelloWorldScreen(),
    );
  }
}

class HelloWorldScreen extends StatelessWidget {  // Removed "void"
  const HelloWorldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('INFT 425 - Akpah Zadok Nana Kwasi'),  // Replace [YOUR NAME HERE] with your name
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello World',
              style: TextStyle(  // Fixed: Textstyle → TextStyle
                fontSize: 40,  // Fixed: fontsize → fontSize
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 243, 33, 44),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Department of Computing Sciences and Engineering',
              style: TextStyle(  // Fixed: Textstyle → TextStyle
                fontSize: 16,  // Fixed: fontsize → fontSize
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}