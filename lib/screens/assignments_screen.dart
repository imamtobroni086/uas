import 'package:flutter/material.dart';

class AssignmentsScreen extends StatelessWidget {
  const AssignmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tugas')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildAssignmentCard(
            context,
            'Tugas 1 Matematika',
            'Matematika Dasar',
            '2023-12-31',
          ),
          _buildAssignmentCard(
            context,
            'Essay Bahasa Inggris',
            'Bahasa Inggris',
            '2023-12-25',
          ),
          _buildAssignmentCard(
            context,
            'Laporan Fisika',
            'Fisika',
            '2024-01-05',
          ),
        ],
      ),
    );
  }

  Widget _buildAssignmentCard(
    BuildContext context,
    String title,
    String subject,
    String deadline,
  ) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text('$subject\nDeadline: $deadline'),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.pushNamed(context, '/assignment_details');
        },
      ),
    );
  }
}
