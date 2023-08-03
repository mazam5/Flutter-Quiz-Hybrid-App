// main
import 'package:flutter/material.dart';

// data
import 'package:new_quiz/data/questions.dart';

// importing Widget used in this screen
import 'package:new_quiz/summary_screen.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final Function onRestart;
  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  List<Map<String, Object>> get getSummaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < widget.chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': widget.chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData;
    final totalQuestions = questions.length;
    final correctQuestions = summaryData
        .where((data) => data['correct_answer'] == data['user_answer'])
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You Answered $correctQuestions out of $totalQuestions questions correctly!',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(140, 255, 255, 255),
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData: getSummaryData),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              icon: const Icon(Icons.restart_alt),
              label: const Text('Restart Quiz'),
              onPressed: () {
                widget.onRestart();
              },
            ),
          ],
        ),
      ),
    );
  }
}
