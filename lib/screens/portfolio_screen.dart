import 'package:flutter/material.dart';
import '../models/portfolio_data.dart';

class PortfolioScreen extends StatelessWidget {
  final PortfolioData data;

  const PortfolioScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Portfolio")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            // Profile picture
             CircleAvatar(
          radius: 60,
          backgroundColor: Colors.blue[100],
          child: Icon(
            Icons.person,
            size: 50,
            color: Colors.blue[800],
          ),
          ),

            const SizedBox(height: 10),

            // Name
            Text(
              data.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            // Title
            Text(data.title, style: const TextStyle(color: Colors.grey)),

            const SizedBox(height: 15),

            // Bio section
            const Text(
              "About Me",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(data.bio),

            const SizedBox(height: 15),

            // Skills section
            const Text(
              "Skills",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            Text(
              data.skills.join(', '),
            ),

            const SizedBox(height: 15),

            // Education section
            const Text(
              "Education",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            ...data.education.map(
              (edu) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(edu.degree),
                  Text(edu.institution),
                  Text(edu.year),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
