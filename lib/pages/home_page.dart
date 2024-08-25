// lib/pages/home_page.dart
import 'package:flutter/material.dart';
import 'mobile_landing_page.dart';
import 'desktop_landing_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const MobileLandingPage();
          } else {
            return const DesktopLandingPage();
          }
        },
      ),
    );
  }
}
