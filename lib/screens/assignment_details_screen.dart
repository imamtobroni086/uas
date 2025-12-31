import 'package:flutter/material.dart';

class AssignmentDetailsScreen extends StatefulWidget {
  const AssignmentDetailsScreen({super.key});

  @override
  State<AssignmentDetailsScreen> createState() =>
      _AssignmentDetailsScreenState();
}

class _AssignmentDetailsScreenState extends State<AssignmentDetailsScreen> {
  String? selectedFile;

  void _selectFile() {
    // Simulate file selection
    setState(() {
      selectedFile = 'jawaban_tugas.pdf'; // Simulated file
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('File dipilih: jawaban_tugas.pdf')),
    );
  }

  void _uploadAnswer() {
    if (selectedFile != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Jawaban berhasil diupload')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Pilih file terlebih dahulu')),
      );
    }
  }

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
            const Text(
              'Upload Jawaban:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            if (selectedFile != null)
              Text('File dipilih: $selectedFile')
            else
              const Text('Belum ada file dipilih'),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: _selectFile,
              child: const Text('Pilih File'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: _uploadAnswer,
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
