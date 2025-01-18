import 'package:farmquest/utils/colors.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 30,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "FARM",
                    style: TextStyle(
                      color: CustomColours.green,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Figtree',
                    ),
                  ),
                  Text(
                    "QUEST",
                    style: TextStyle(
                      color: CustomColours.darkGreen,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Figtree',
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
