import 'package:farmquest/screens/home.dart';
import 'package:farmquest/screens/landing.dart';
import 'package:farmquest/screens/splash.dart';
import 'package:farmquest/screens/survey.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 15, 100, 53),
        ),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const Home(), // Default route
        '/landing': (context) => const LandingScreen(),
        '/survey': (context) => const SurveyScreen(),
        '/home': (context) => HomeScreen(),
      },
      initialRoute: '/',
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SplashScreen());
  }
}
