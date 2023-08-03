import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return Row(
            children: [
              SizedBox(
                width: 60,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: data['user_answer'] == data['correct_answer']
                        ? Colors.cyan
                        : Colors.red,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Text(((data['question_index'] as int) + 1).toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                      )),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'].toString(),
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Correct Answer:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${data['correct_answer']}',
                        textAlign: TextAlign.left,
                        style: const TextStyle(color: Colors.greenAccent),
                      ),
                      const Text(
                        'Your Answer:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${data['user_answer']}',
                        style: TextStyle(
                          color: data['user_answer'] != data['correct_answer']
                              ? Colors.redAccent
                              : Colors.greenAccent,
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        }).toList()),
      ),
    );
  }
}
