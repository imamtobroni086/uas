import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.pushNamed(context, '/announcements');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting
            const Text(
              'Selamat pagi, User!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Banner
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Banner Informasi',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Shortcut Menu
            const Text(
              'Menu Cepat',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildShortcutButton(context, Icons.class_, 'Kelas', '/main'),
                _buildShortcutButton(
                  context,
                  Icons.assignment,
                  'Tugas',
                  '/main',
                ),
                _buildShortcutButton(
                  context,
                  Icons.announcement,
                  'Pengumuman',
                  '/announcements',
                ),
              ],
            ),
            const SizedBox(height: 16),
            // List Kelas
            const Text(
              'Kelas yang Diikuti',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildClassCard(
              context,
              'Matematika Dasar',
              'Dr. Ahmad',
              0.75,
              'Aktif',
            ),
            _buildClassCard(
              context,
              'Bahasa Inggris',
              'Ms. Sarah',
              0.5,
              'Aktif',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShortcutButton(
    BuildContext context,
    IconData icon,
    String label,
    String route,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.red,
            child: Icon(icon, color: Colors.white),
          ),
          const SizedBox(height: 4),
          Text(label),
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
