import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int currentIndex;

  CustomBottomNavigation({required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: Colors.red, 
      unselectedItemColor: Colors.grey, 
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule),
          label: 'Jadwal',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: 'Nilai',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profil',
        ),
      ],
      onTap: (index) {
        // Logika untuk pindah halaman sesuai indeks
        if (currentIndex != index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/nilai');
              break;
            case 2:
              Navigator.pushReplacementNamed(context, '/profil');
              break;
          }
        }
      },
    );
  }
}
