import 'package:flutter/material.dart';
import '../data/campus_data.dart';

class DepartmentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Academic Departments'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: departments.length,
        itemBuilder: (context, index) {
          final dept = departments[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.indigo.shade100,
                child: Icon(Icons.school, color: Colors.indigo),
              ),
              title: Text(
                dept.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(dept.building),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () => Navigator.pushNamed(
                context,
                '/department/detail',
                arguments: dept,
              ),
            ),
          );
        },
      ),
    );
  }
}
