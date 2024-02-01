import 'package:flutter/material.dart';
import 'package:simz/jadwal.dart';
import 'package:simz/login.dart';
import 'package:simz/nilai.dart';
import 'package:simz/profil.dart';
import 'package:simz/beranda.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Siakad Untag',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/awal':(context) => AwalPage(),
        '/home': (context) => HomePage(),
        '/nilai': (context) => NilaiPage(),
        '/profil': (context) => ProfilPage(),
      },
    );
  }
}