import 'package:flutter/material.dart';

class ClassDetailsScreen extends StatelessWidget {
  const ClassDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Kelas')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nama Kelas: Matematika Dasar',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Dosen: Dr. Ahmad'),
            const SizedBox(height: 8),
            const Text(
              'Deskripsi: Kursus matematika dasar untuk mahasiswa semester 1.',
            ),
            const SizedBox(height: 16),
            const Text(
              'Materi:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text('- Aljabar'),
            const Text('- Geometri'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Bergabung dengan kelas')),
                );
              },
              child: const Text('Bergabung'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/learning_materials');
              },
              child: const Text('Lihat Materi Pembelajaran'),
            ),
          ],
        ),
      ),
    );
  }
}
