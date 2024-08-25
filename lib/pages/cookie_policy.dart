import 'package:flutter/material.dart';

class CookiePage extends StatelessWidget {
  const CookiePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: const Center(
        child: Text('Information about Issaathi Tour and Travels.'),
      ),
    );
  }
}
