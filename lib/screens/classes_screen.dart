import 'package:flutter/material.dart';

class ClassesScreen extends StatelessWidget {
  const ClassesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kelas')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildClassCard(
            context,
            'Matematika Dasar',
            'Dr. Ahmad',
            0.75,
            'Aktif',
          ),
          _buildClassCard(context, 'Bahasa Inggris', 'Ms. Sarah', 0.5, 'Aktif'),
          _buildClassCard(context, 'Fisika', 'Prof. Budi', 0.9, 'Aktif'),
          _buildClassCard(context, 'Kimia', 'Dr. Siti', 0.3, 'Aktif'),
        ],
      ),
    );
  }

  Widget _buildClassCard(
    BuildContext context,
    String name,
    String lecturer,
    double progress,
    String status,
  ) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text(lecturer),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(status),
            const SizedBox(height: 4),
            SizedBox(
              width: 60,
              child: LinearProgressIndicator(value: progress),
            ),
          ],
        ),
        onTap: () {
          Navigator.pushNamed(context, '/class_details');
        },
      ),
    );
  }
}
