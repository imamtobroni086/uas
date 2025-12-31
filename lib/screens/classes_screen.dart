import 'package:flutter/material.dart';

class ClassesScreen extends StatefulWidget {
  const ClassesScreen({super.key});

  @override
  State<ClassesScreen> createState() => _ClassesScreenState();
}

class _ClassesScreenState extends State<ClassesScreen> {
  final _codeController = TextEditingController();

  void _joinClass() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Bergabung ke Kelas'),
        content: TextField(
          controller: _codeController,
          decoration: const InputDecoration(labelText: 'Kode Kelas'),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Batal'),
          ),
          ElevatedButton(
            onPressed: () {
              // Simulate joining
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Berhasil bergabung ke kelas dengan kode: ${_codeController.text}',
                  ),
                ),
              );
              _codeController.clear();
            },
            child: const Text('Bergabung'),
          ),
        ],
      ),
    );
  }

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
      floatingActionButton: FloatingActionButton(
        onPressed: _joinClass,
        child: const Icon(Icons.add),
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
