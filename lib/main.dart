import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/departments_screen.dart';
import 'screens/department_detail.dart';

void main() {
  runApp(const CampusDirectoryApp());
}

class CampusDirectoryApp extends StatelessWidget {
  const CampusDirectoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/departments': (context) => DepartmentsScreen(),
        '/department/detail': (context) => DepartmentDetailScreen(),
      },
    );
  }
}