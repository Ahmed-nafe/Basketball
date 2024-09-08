import 'package:basktball/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Pointer());
}

class Pointer extends StatelessWidget {
  const Pointer({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}

