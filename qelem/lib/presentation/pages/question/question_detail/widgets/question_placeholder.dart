import 'package:flutter/material.dart';

class QuestionPlaceholder extends StatelessWidget {
  const QuestionPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Shimmer placeholder for question card
    return Column(
      children: [
        Container(
          height: 30,
          width: double.infinity,
          color: Colors.grey[200],
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Container(
            height: 40,
            width: double.infinity,
            color: Colors.grey[200],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 18,
          width: double.infinity,
          color: Colors.grey[200],
        ),
        const SizedBox(height: 3),
        Container(
          height: 18,
          width: double.infinity,
          color: Colors.grey[200],
        ),
        const SizedBox(height: 3),
        Container(
          height: 18,
          width: double.infinity,
          color: Colors.grey[200],
        ),
        const SizedBox(height: 3),
        Padding(
          padding: const EdgeInsets.only(right: 70),
          child: Container(
            height: 18,
            width: double.infinity,
            color: Colors.grey[200],
          ),
        ),
      ],
    );
  }
}
