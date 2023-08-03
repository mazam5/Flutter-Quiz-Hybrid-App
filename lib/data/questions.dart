import 'package:new_quiz/models/quiz_question.dart';

final questions = [
  QuizQuestion('What is Flutter?', [
    'Flutter is an open-source UI toolkit',
    'Flutter is an open-source backend framework',
    'Flutter is an open-source programming language',
    'Flutters is a DBMS toolkit',
  ]),
  QuizQuestion(
      'Who developed the Flutter Framework and continues to maintain it today?',
      ['Google', 'Microsoft', 'Facebook', 'Oracle']),
  QuizQuestion(
      'Which programming language is used to build Flutter applications?',
      ['Dart', 'Go', 'Java', 'Python']),
  QuizQuestion(
      'How many types of widgets are there in Flutter?', ['2', '4', '6', '8+']),
  QuizQuestion(
      'Access to a cloud database through Flutter is available through which service?',
      ['Firebase Database', 'NoSQL', 'MySQL', 'SQLite']),
  QuizQuestion(
      'What are some key advantages of Flutter over alternate frameworks?', [
    'All of the above',
    'Strong supporting tools for application development and launch',
    'Future-proofed technologies and UI resources',
    'Rapid cross-platform application development and debugging tools'
  ]),
  QuizQuestion(
      'What type of Flutter animation allows you to represent real-world behavior?',
      ['Physics-based', 'Maths-based', 'Graph-based', 'Sim-based']),
  QuizQuestion(
      'True or false: Flutter boasts improved runtime performance over most application frameworks.',
      ['True', 'False']),
  QuizQuestion(
      'What command would you use to compile your Flutter app in release mode?',
      [
        'Flutter run --release',
        'Flutter run \$release',
        'Flutter build --release',
        'Flutter --release'
      ]),
  QuizQuestion(
      'Which function will return the widgets attached to the screen as a root of the widget tree to be rendered on screen?',
      ['runApp()', 'main()', 'build()', 'render()']),
  QuizQuestion(
      'What is the key configuration file used when building a Flutter project?',
      ['pubspec.yaml', 'pubspec.xml', 'package.json', 'config.html']),
  QuizQuestion(
      'True or false: an experienced Flutter developer doesn\'t need to know platform native languages or tools to build apps.',
      ['True', 'False']),
  QuizQuestion(
      'Which component allows us to specify the distance between widgets on the screen?',
      ['SizedBox', 'Spacer', 'Padding', 'Margin']),
  QuizQuestion(
      'Which widget type allows you to modify its appearance dynamically according to user input?',
      ['Stateful', 'Stateless']),
  QuizQuestion(
      'What command would you run to verify your Flutter install and ensure your environment is set up correctly?',
      ['flutter doctor', 'flutter verify', 'flutter check', 'flutter test']),
  QuizQuestion(
      'What language is Flutter\'s rendering engine primarily written in?',
      ['C++', 'C', 'Java', 'Dart']),
  QuizQuestion(
      'True or False: Flutter supports desktop application development.',
      ['True', 'False']),
  QuizQuestion('What widget would you use for repeating content in Flutter?',
      ['ListView', 'ExpandedView', 'Column', 'Row']),
];
