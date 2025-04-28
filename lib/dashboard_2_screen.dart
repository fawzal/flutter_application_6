import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Dashboard2Screen extends StatefulWidget {
  const Dashboard2Screen({super.key});

  @override
  State<Dashboard2Screen> createState() => _Dashboard2ScreenState();
}

class _Dashboard2ScreenState extends State<Dashboard2Screen> {
  bool temaGelap = false;
  bool temaTerang = false;
  ubahTema() {
    setState(() {
      temaGelap = !temaGelap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      backgroundColor: temaGelap ? const Color.fromARGB(255, 0, 0, 0) : Colors.orange,
      body: Column(
        children: [
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  ubahTema();
                  temaTerang = !temaTerang;
                },
                child: temaTerang ? Text("Ganti Tema Gelap") :  Text("Ganti Tema Elsa")
              ),
            ],
          ),
        temaTerang ? Icon(Icons.favorite) : Icon(Icons.star),
        SizedBox(
  width: 200.0,
  height: 100.0,
  child: Shimmer.fromColors(
    baseColor: Colors.red,
    highlightColor: Colors.yellow,
    child: Text(
      'Rozii',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 40.0,
        fontWeight:
        FontWeight.bold,
      ),
    ),
  ),
),
        ],
      ),
    );
  }
}