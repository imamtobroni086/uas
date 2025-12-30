import 'package:flutter/material.dart';

class AssignmentDetailsScreen extends StatelessWidget {
  const AssignmentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Tugas')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Judul Tugas: Tugas 1 Matematika',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Mata Kuliah: Matematika Dasar'),
            const SizedBox(height: 8),
            const Text('Deadline: 2023-12-31'),
            const SizedBox(height: 16),
            const Text(
              'Instruksi:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text('Kerjakan soal 1-10 di buku halaman 50.'),
            const SizedBox(height: 16),
            const Text(
              'Lampiran:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text('soal.pdf'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Upload file')));
              },
              child: const Text('Upload Jawaban'),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Tugas dikirim')));
              },
              child: const Text('Submit Tugas'),
            ),
          ],
        ),
      ),
    );
  }
}
