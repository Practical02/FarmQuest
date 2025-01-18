import 'package:farmquest/utils/colors.dart';
import 'package:flutter/material.dart';

class SurveyScreen extends StatelessWidget {
  const SurveyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Create Your Dream",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Figtree',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Farm",
                        style: TextStyle(
                          color: CustomColours.green,
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Figtree',
                        ),
                      ),
                      Text(
                        " With Us",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Figtree',
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 30,
                  ),
                  Column(
                    children: [
                      const QuestionSection(
                        question: "What is your desired scale of farm?",
                        options: [
                          "Small",
                          "Micro",
                          "LArge",
                          "Extreme Large",
                        ],
                      ),
                      const SizedBox(height: 20),
                      const QuestionSection(
                        question:
                            "How would you describe your knowledge about farming?",
                        options: [
                          "Very Knowledgable",
                          "Somewhat Knowledgeble",
                          "Familiar with Farming",
                          "Complete Newbie",
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                  GestureDetector(
                    onTap: () => {Navigator.pushNamed(context, '/home')},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      margin: EdgeInsets.symmetric(vertical: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green[200],
                      ),
                      child: Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Figtree',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class QuestionSection extends StatelessWidget {
  final String question;
  final List<String> options;

  const QuestionSection({
    super.key,
    required this.question,
    required this.options,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Divider(),
        const SizedBox(height: 10),
        ListView.builder(
          itemCount: options.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                Text(
                  options[index],
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
