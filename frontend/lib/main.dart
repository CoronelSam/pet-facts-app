import 'package:flutter/material.dart';
import 'screens/pet_home.dart';

void main() {
  runApp(const PetFactsApp());
}

class PetFactsApp extends StatelessWidget {
  const PetFactsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Facts',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Roboto',
      ),
      home: const PetHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}