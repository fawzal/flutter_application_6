import 'package:flutter/material.dart';
import 'dart:math';

class ProfileScreen extends StatefulWidget {
  final String email;
  const ProfileScreen({super.key, required this.email});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Color backgroundColor = Colors.blue;

  void gantiWarnaBackground() {
    setState(() {
      backgroundColor = Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100],
        title: Text("Profile ${widget.email}"),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home, size: 40),
          Icon(Icons.person, size: 40),
          Icon(Icons.list, size: 40),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My Profile", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/profile.jpg"), // Gambar profil default
                  backgroundColor: const Color.fromARGB(255, 221, 240, 255),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    padding: EdgeInsets.all(5),
                    child: Icon(Icons.edit, size: 25, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text("Nama: Fawwaz Gibran", style: TextStyle(fontSize: 18)),
            Text("Nim: 230103021", style: TextStyle(fontSize: 18)),
            Text("Email: ${widget.email}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: gantiWarnaBackground,
              child: Text("Ganti Background Color"),
            ),
          ],
        ),
      ),
    );
  }
}
