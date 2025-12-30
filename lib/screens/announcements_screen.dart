import 'package:flutter/material.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pengumuman')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildAnnouncementCard(
            'Pengumuman 1',
            'Selamat datang di LMS',
            '2023-12-01',
          ),
          _buildAnnouncementCard(
            'Pengumuman 2',
            'Tugas deadline diperpanjang',
            '2023-12-05',
          ),
        ],
      ),
    );
  }

  Widget _buildAnnouncementCard(String title, String content, String date) {
    return Card(
      child: ListTile(title: Text(title), subtitle: Text('$content\n$date')),
    );
  }
}
