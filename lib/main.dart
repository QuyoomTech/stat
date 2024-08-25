import 'package:saathi/core.dart';
// lib/main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const SaathiTourAndTravels());
}

class SaathiTourAndTravels extends StatelessWidget {
  const SaathiTourAndTravels({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Issaathi Tour and Travels',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: Routes.routes,
    );
  }
}
