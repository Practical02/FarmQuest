import 'package:farmquest/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset(
                        "assets/images/logo.png",
                        height: 33,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "FARM",
                          style: TextStyle(
                            color: CustomColours.green,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Figtree',
                          ),
                        ),
                        Text(
                          "QUEST",
                          style: TextStyle(
                            color: CustomColours.darkGreen,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Figtree',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(
              "assets/images/landing.png",
              width: MediaQuery.sizeOf(context).width,
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Planting Green,",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Figtree',
                    ),
                  ),
                  Text(
                    "Growing Life",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Figtree',
                    ),
                  ),
                  Text(
                    "Your Vision, Framed With Purpose, Has The Power To Transform The World.",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Figtree',
                    ),
                  ),
                  GestureDetector(
                    onTap: () => {Navigator.pushNamed(context, '/survey')},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      margin: EdgeInsets.symmetric(vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green[200],
                      ),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Figtree',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Already hve an Account?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Figtree',
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
