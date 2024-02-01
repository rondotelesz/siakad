import 'package:flutter/material.dart';
import 'package:simz/navbar.dart';

class NilaiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nilai Mahasiswa'),
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
            SizedBox(height: 16.0), 
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
                    'Nama: Jonny Calisto Ramos Dacosta',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0), 
                  Text('NIM: 1462100119', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8.0),
                  Text('Semester: 5', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: DataTable(
                columns: const <DataColumn>[
                  DataColumn(label: Text('Kode MK')),
                  DataColumn(label: Text('Nama MK')),
                  DataColumn(label: Text('Semester')),
                  DataColumn(label: Text('Nilai')),
                  DataColumn(label: Text('NK')),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('14620053')),
                      DataCell(Text('SISTEM INFORMASI')),
                      DataCell(Text('1')),
                      DataCell(Text('B+')),
                      DataCell(Text('9,75')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('14620103')),
                      DataCell(Text('STRUKTUR DATA DAN ALGORITMA')),
                      DataCell(Text('2')),
                      DataCell(Text('AB')),
                      DataCell(Text('10,5')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('14620133')),
                      DataCell(Text('KECERDASAN ARTIFISIAL')),
                      DataCell(Text('3')),
                      DataCell(Text('B+')),
                      DataCell(Text('9,75')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('14620173')),
                      DataCell(Text('ADMINISTRASI JARINGAN')),
                      DataCell(Text('4')),
                      DataCell(Text('B+')),
                      DataCell(Text('9,75')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('14620113')),
                      DataCell(Text('	STATISTIK INFERENSI')),
                      DataCell(Text('3')),
                      DataCell(Text('AB')),
                      DataCell(Text('10,5')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('14620173')),
                      DataCell(Text('MANAJEMEN BASIS DATA *')),
                      DataCell(Text('3')),
                      DataCell(Text('AB')),
                      DataCell(Text('14')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('14620183')),
                      DataCell(Text('	PENGEMBANGAN APLIKASI WEB*')),
                      DataCell(Text('4')),
                      DataCell(Text('B+')),
                      DataCell(Text('9,75')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('14620204')),
                      DataCell(Text('	GRAFIKA KOMPUTER*')),
                      DataCell(Text('4')),
                      DataCell(Text('AB')),
                      DataCell(Text('14')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('	14620213')),
                      DataCell(Text('ENTREPRENEURSHIP')),
                      DataCell(Text('3')),
                      DataCell(Text('A-')),
                      DataCell(Text('11,25')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('14620083')),
                      DataCell(Text('ARSITEKTUR DAN ORGANISASI KOMPUTER *')),
                      DataCell(Text('3')),
                      DataCell(Text('B+')),
                      DataCell(Text('9,75')),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(currentIndex: 1),
    );
  }
}
