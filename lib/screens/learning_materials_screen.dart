import 'package:flutter/material.dart';

class LearningMaterialsScreen extends StatelessWidget {
  const LearningMaterialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Materi Pembelajaran')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildMaterialCard(
            context,
            'Artikel: Aljabar Dasar',
            'Teks',
            Icons.article,
          ),
          _buildMaterialCard(
            context,
            'File: Soal Latihan.pdf',
            'File',
            Icons.file_present,
          ),
          _buildMaterialCard(
            context,
            'Video: Pengenalan Matematika',
            'Video',
            Icons.video_library,
          ),
        ],
      ),
    );
  }

  Widget _buildMaterialCard(
    BuildContext context,
    String title,
    String type,
    IconData icon,
  ) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(type),
        onTap: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Membuka $title')));
        },
      ),
    );
  }
}
