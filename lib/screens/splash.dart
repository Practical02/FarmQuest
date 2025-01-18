import 'package:farmquest/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/landing');
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "FARM",
                  style: TextStyle(
                    color: CustomColours.green,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Figtree',
                  ),
                ),
                Text(
                  "QUEST",
                  style: TextStyle(
                    color: CustomColours.darkGreen,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Figtree',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
