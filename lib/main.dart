import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/contact_page.dart';

void main() {
  runApp(const MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter Website',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}

PreferredSizeWidget buildNavBar(BuildContext context) {
  final currentRoute = ModalRoute.of(context)?.settings.name;
  return AppBar(
    title: const Text('My App', style: TextStyle(fontWeight: FontWeight.bold)),
    elevation: 2,
    actions: [
      TextButton(
        onPressed: () {
          if (currentRoute != '/') {
            Navigator.pushReplacementNamed(context, '/');
          }
        },
        child: const Text('Home'),
      ),
      TextButton(
        onPressed: () {
          if (currentRoute != '/about') {
            Navigator.pushReplacementNamed(context, '/about');
          }
        },
        child: const Text('About Us'),
      ),
      TextButton(
        onPressed: () {
          if (currentRoute != '/contact') {
            Navigator.pushReplacementNamed(context, '/contact');
          }
        },
        child: const Text('Contact Us'),
      ),
      const SizedBox(width: 16),
    ],
  );
}
