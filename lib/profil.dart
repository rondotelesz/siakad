import 'package:flutter/material.dart';
import 'package:simz/navbar.dart';
import 'package:simz/login.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Mahasiswa'),
        backgroundColor: Colors.red,

      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInfoRow(Icons.person, 'Nama', 'Jonny Calisto Ramos Dacosta'),
              SizedBox(height: 24),
              _buildInfoRow(Icons.place, 'TTL', 'Surakarta, 4 Januari 2003'),
              SizedBox(height: 24),
              _buildInfoRow(Icons.numbers, 'NIM', '1462100119'),
              SizedBox(height: 24),
              _buildInfoRow(Icons.book, 'Prodi', 'Teknik Informatika'),
              SizedBox(height: 24),
              _buildInfoRow(Icons.school, 'Semester', '5'),
              SizedBox(height: 24),
              _buildInfoRow(Icons.person_3, 'Dosen Wali', 'Ir. Elvianto Dwi Hartono, S.T., M.M., M.Kom., M.T.'),
              SizedBox(height: 24),
              _buildInfoRow(Icons.star, 'IPK', '3.48'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigasi kembali ke halaman login
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                (route) => false,
              );
            },
            child: Text('Keluar'),
          ),
          CustomBottomNavigation(currentIndex: 2),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(
          icon,
          size: 24,
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              value,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ],
    );
  }
}
