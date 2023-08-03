// material design
import 'package:flutter/material.dart';

// fonts
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  // used from other Widgets
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',
              width: 300, color: const Color.fromARGB(155, 255, 255, 255)),
          const SizedBox(height: 50),
          Text(
            'Learn Flutter the fun way',
            style: GoogleFonts.poppins(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            label: const Text('Start Quiz'),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: startQuiz,
          ),
        ],
      ),
    );
  }
}
