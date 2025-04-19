import 'package:flutter/material.dart';
import 'profile_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Text('Dashboard'),
      ),
      body: ElevatedButton(
              onPressed: () {
                 Navigator.push(
                    context,
                MaterialPageRoute(builder: (context) => ProfileScreen(nama: 'Fawwaz Gibran Sagita Al Firdauss')),
               );
            }, child: Text('Profile'),
      )
    );
  }
}