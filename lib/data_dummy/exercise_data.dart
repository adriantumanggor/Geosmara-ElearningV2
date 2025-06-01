// ================================================================================
// 4. EXERCISE DATABASE (Separated for better management)
// ================================================================================

import '../models/exercise.dart';
import '../models/option.dart';
import '../models/question.dart';

final Map<String, Exercise> exerciseData = {
  '1-1': Exercise(
    id: 'ex-1-1',
    title: 'Introduction to Flutter Quiz',
    description: 'Test your knowledge of Flutter basics.',
    questions: [
      Question(
        id: 'q-1-1-1',
        question: 'Which company created Flutter?',
        options: [
          Option(id: 'opt-1-1-1-a', text: 'Apple'),
          Option(id: 'opt-1-1-1-b', text: 'Google'),
          Option(id: 'opt-1-1-1-c', text: 'Microsoft'),
          Option(id: 'opt-1-1-1-d', text: 'Facebook'),
        ],
        correctOptionId: 'opt-1-1-1-b',
      ),
      Question(
        id: 'q-1-1-2',
        question: 'What programming language does Flutter use?',
        options: [
          Option(id: 'opt-1-1-2-a', text: 'JavaScript'),
          Option(id: 'opt-1-1-2-b', text: 'Kotlin'),
          Option(id: 'opt-1-1-2-c', text: 'Swift'),
          Option(id: 'opt-1-1-2-d', text: 'Dart'),
        ],
        correctOptionId: 'opt-1-1-2-d',
      ),
      Question(
        id: 'q-1-1-3',
        question: 'Which is NOT a layer in Flutter\'s architecture?',
        options: [
          Option(id: 'opt-1-1-3-a', text: 'Framework Layer'),
          Option(id: 'opt-1-1-3-b', text: 'Engine Layer'),
          Option(id: 'opt-1-1-3-c', text: 'Database Layer'),
          Option(id: 'opt-1-1-3-d', text: 'Embedder Layer'),
        ],
        correctOptionId: 'opt-1-1-3-c',
      ),
    ],
  ),

  '1-2': Exercise(
    id: 'ex-1-2',
    title: 'Building Your First App Quiz',
    description: 'Test your understanding of Flutter app development.',
    questions: [
      Question(
        id: 'q-1-2-1',
        question: 'Command to create a new Flutter project?',
        options: [
          Option(id: 'opt-1-2-1-a', text: 'flutter init'),
          Option(id: 'opt-1-2-1-b', text: 'flutter new'),
          Option(id: 'opt-1-2-1-c', text: 'flutter create'),
          Option(id: 'opt-1-2-1-d', text: 'flutter start'),
        ],
        correctOptionId: 'opt-1-2-1-c',
      ),
      Question(
        id: 'q-1-2-2',
        question: 'Purpose of the widget tree in Flutter?',
        options: [
          Option(id: 'opt-1-2-2-a', text: 'Manage app state'),
          Option(id: 'opt-1-2-2-b', text: 'Define UI hierarchy'),
          Option(id: 'opt-1-2-2-c', text: 'Handle network requests'),
          Option(id: 'opt-1-2-2-d', text: 'Store preferences'),
        ],
        correctOptionId: 'opt-1-2-2-b',
      ),
    ],
  ),

  '2-1': Exercise(
    id: 'ex-2-1',
    title: 'React Native Basics Quiz',
    description: 'Test your React Native knowledge.',
    questions: [
      Question(
        id: 'q-2-1-1',
        question: 'Which company developed React Native?',
        options: [
          Option(id: 'opt-2-1-1-a', text: 'Google'),
          Option(id: 'opt-2-1-1-b', text: 'Facebook'),
          Option(id: 'opt-2-1-1-c', text: 'Microsoft'),
          Option(id: 'opt-2-1-1-d', text: 'Apple'),
        ],
        correctOptionId: 'opt-2-1-1-b',
      ),
    ],
  ),
};
