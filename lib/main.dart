import 'package:flutter/material.dart';
import 'screens/portfolio_screen.dart';
import 'models/portfolio_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final portfolioData = PortfolioData(
      name: 'Akpah Zadok Nana Kwasi',
      title: 'BSc Computer Science Student',          
      bio:  'I am a student studing Computer Science in Valley View University in Level 300 \n', 
      skills: ['C++', 'Java', 'Xampp', 'Python', 'HTML', 'CSS', 'JavaScript', 'Flutter', 'Dart'],
      education: [
        Education(
          institution: 'Valley View University',
          degree: 'BSc Computer Science',
          year: '2023–Present',
        ),
      ],
    );

    return MaterialApp(
      title: 'A Professional Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortfolioScreen(data: portfolioData),
    );
  }
}