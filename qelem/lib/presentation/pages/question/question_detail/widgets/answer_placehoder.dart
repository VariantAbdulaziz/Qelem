import 'package:flutter/material.dart';

class AnswerPlaceholder extends StatelessWidget {
  const AnswerPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              title: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 20,
                      width: double.infinity,
                      color: Colors.grey[300],
                    ),
                  ),
                  const Expanded(child: SizedBox(), flex: 4),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  height: 18,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),
                const SizedBox(height: 3),
                Container(
                  height: 18,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 18,
                        width: double.infinity,
                        color: Colors.grey[300],
                      ),
                    ),
                    const Expanded(child: SizedBox(), flex: 4),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
