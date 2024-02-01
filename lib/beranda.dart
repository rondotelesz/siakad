import 'package:flutter/material.dart';
import 'package:simz/jadwal.dart'; 
import 'package:simz/nilai.dart'; 

class AwalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
        backgroundColor: Colors.red,
        leading: Image.asset(
          'assets/images/untag3.png',
          width: 10,
          height: 10,
        ),
      ),
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/untag2.png',
              width: 250,
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Program Studi Teknik Informatika Untag Surabaya',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman beranda saat tombol cek jadwal ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Cek Jadwal'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman nilai saat tombol cek nilai ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NilaiPage()),
                );
              },
              child: Text('Cek Nilai'),
            ),
          ],
        ),
      ),
    );
  }
}
