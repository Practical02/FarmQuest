import 'package:farmquest/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
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
