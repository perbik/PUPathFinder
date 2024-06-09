import 'package:flutter/material.dart';
import 'package:pupathfinder/pages/home/home.dart';

// test commit 02

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

