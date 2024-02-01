import 'package:flutter/material.dart';
import 'package:simz/navbar.dart'; 

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadwal Kuliah'),
         backgroundColor: Colors.red,
        leading: Image.asset(
          'assets/images/untag3.png',
          width: 10,
          height: 10,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16.0),  // Tambahkan baris ini untuk memberi jarak antara AppBar dan konten
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama         : Jonny Calisto Ramos Dacosta',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('NIM            :  1462100119', style: TextStyle(fontSize: 18)),
                  Text('Semester  :  5', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            SizedBox(height: 16.0),  // Tambahkan baris ini untuk memberi jarak antara konten dan tabel
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: DataTable(
                columns: [
                  DataColumn(label: Text('Kode MK')),
                  DataColumn(label: Text('Nama MK')),
                  DataColumn(label: Text('Kelas')),
                  DataColumn(label: Text('Hari')),
                  DataColumn(label: Text('Jam')),
                  DataColumn(label: Text('Ruangan')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('14620263')),
                    DataCell(Text('PENGEMBANGAN GAME')),
                    DataCell(Text('B')),
                    DataCell(Text('Kamis')),
                    DataCell(Text('12:00 - 14:30')),
                    DataCell(Text('Ruang I201')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('14620693')),
                    DataCell(Text('VISUALISASI DATA')),
                    DataCell(Text('A')),
                    DataCell(Text('Senin')),
                    DataCell(Text('07:00 - 09:30')),
                    DataCell(Text('Ruang Q1005')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('14620373')),
                    DataCell(Text('PENGOLAHAN BAHASA ALAMI DAN TEXT MINING')),
                    DataCell(Text('B')),
                    DataCell(Text('Kamis')),
                    DataCell(Text('09:30 - 12:00')),
                    DataCell(Text('Ruang K312')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('14620253')),
                    DataCell(Text('SISTEM APLIKASI MULTIMEDIA')),
                    DataCell(Text('C')),
                    DataCell(Text('Selasa')),
                    DataCell(Text('09:30 - 12:00')),
                    DataCell(Text('Ruang Q501')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('14620233')),
                    DataCell(Text('PENGEMBANGAN APLIKASI BERGERAK*')),
                    DataCell(Text('D')),
                    DataCell(Text('Selasa')),
                    DataCell(Text('12:00 - 14:30')),
                    DataCell(Text('Ruang Q405')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('14620223')),
                    DataCell(Text('SISTEM KEAMANAN SIBER')),
                    DataCell(Text('A')),
                    DataCell(Text('Kamis')),
                    DataCell(Text('07:00 - 09:30')),
                    DataCell(Text('Ruang Q803')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('14620244')),
                    DataCell(Text('PENGOLAHAN CITRA DIGITAL*')),
                    DataCell(Text('D')),
                    DataCell(Text('Jumat')),
                    DataCell(Text('12:50 - 14:30')),
                    DataCell(Text('Ruang Q403')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('Rabu')),
                    DataCell(Text('12:00 - 13:40')),
                    DataCell(Text('Ruang Q301')),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(currentIndex: 0),
    );
  }
}
