// router.dart
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/about_us.dart';
import 'pages/contact_us.dart';
import 'pages/refund_policy.dart';
import 'pages/privacy_policy.dart';
import 'pages/terms_and_conditions.dart';
import 'pages/cookie_policy.dart';

class Routes {
  static final routes = <String, WidgetBuilder>{
    '/home': (context) => const HomePage(),
    '/about': (context) => const AboutPage(),
    '/contact': (context) => const ContactPage(),
    '/refund': (context) => const RefundPage(),
    '/privacy': (context) => const PrivacyPage(),
    '/terms': (context) => const TermsPage(),
    '/cookie': (context) => const CookiePage(),
  };
}
