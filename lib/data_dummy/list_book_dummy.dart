import '../models/book.dart';
import '../models/chapter.dart';
import '../models/content.dart';
import '../models/exercise.dart';
import '../models/option.dart';
import '../models/question.dart';
import '../models/subchapter.dart';

List<Book> getRecommendedBooks() {
  return [
    Book(
      id: '1',
      title: 'Flutter Development',
      author: 'John Doe',
      imageUrl: 'https://picsum.photos/id/24/400/600',
      rating: 4.5,
      progress: 0.35,
      chapters: [
        Chapter(
          id: '1-1',
          title: 'Introduction to Flutter',
          subChapters: [
            SubChapter(
              id: '1-1-1',
              title: 'What is Flutter?',
              contents: [
                Content(
                  id: '1-1-1-1',
                  text: 'Flutter is an open-source UI software development kit created by Google.',
                ),
                Content(
                  id: '1-1-1-2',
                  text: 'It is used to develop cross-platform applications from a single codebase for any platform, including iOS, Android, Linux, macOS, Windows, and the web.',
                ),
                Content(
                  id: '1-1-1-3',
                  text: 'Flutter offers a reactive and declarative programming style. It is known for its fast development capabilities, expressive UI, and native performance.',
                ),
                Content(
                  id: '1-1-1-4',
                  text: 'With Flutter, developers can create high-performance applications that feel natural on different platforms, all from a single codebase. This helps decrease development costs and time-to-market for mobile apps.',
                ),
              ],
            ),
            SubChapter(
              id: '1-1-2',
              title: 'Flutter Architecture',
              contents: [
                Content(
                  id: '1-1-2-1',
                  text: "Flutter's architecture is built on three main layers:",
                ),
                Content(
                  id: '1-1-2-2',
                  text: "1. Framework Layer: This is the highest level layer that most developers interact with. It contains high-level features like widgets, animation, painting, and gestures.",
                ),
                Content(
                  id: '1-1-2-3',
                  text: "2. Engine Layer: Written in C++, this layer provides low-level implementations of Flutter's core APIs, including graphics, text layout, file and network I/O, and plugin architecture.",
                ),
                Content(
                  id: '1-1-2-4',
                  text: "3. Embedder Layer: Platform-specific code that provides entry points for platform channels, lifecycle events, and surface rendering.",
                ),
                Content(
                  id: '1-1-2-5',
                  text: "Flutter's architecture is designed for fast rendering and flexibility across platforms. The rendering pipeline is optimized for 60 or 120fps performance, ensuring smooth animations and transitions.",
                ),
              ],
            ),
            SubChapter(
              id: '1-1-3',
              title: 'Getting Started with Flutter',
              contents: [
                Content(
                  id: '1-1-3-1',
                  text: 'To get started with Flutter, you need to set up your development environment:',
                ),
                Content(
                  id: '1-1-3-2',
                  text: '1. Install Flutter SDK: Download and install the Flutter SDK from flutter.dev',
                ),
                Content(
                  id: '1-1-3-3',
                  text: '2. Set up an editor: Flutter supports various IDEs like Android Studio, IntelliJ IDEA, and VS Code with Flutter and Dart plugins.',
                ),
                Content(
                  id: '1-1-3-4',
                  text: '3. Create a new Flutter project: Use the command `flutter create my_app` to create a new project.',
                ),
                Content(
                  id: '1-1-3-5',
                  text: '4. Run your app: Connect a device or start an emulator, then run `flutter run` in your project directory.',
                ),
                Content(
                  id: '1-1-3-6',
                  text: "Flutter's hot reload feature makes development fast and interactive. When you make changes to your code, you can see them reflected in your running app in milliseconds, without losing the current state.",
                ),
              ],
            ),
          ],
          exercise: Exercise(
            id: 'ex-1-1',
            title: 'Introduction to Flutter Quiz',
            description: 'Test your knowledge of Flutter basics with this quick quiz.',
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
                question: 'Which of the following is NOT a layer in Flutter\'s architecture?',
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
        ),
        Chapter(
          id: '1-2',
          title: 'Building Your First Flutter App',
          subChapters: [
            SubChapter(
              id: '1-2-1',
              title: 'Setting Up the Project',
              contents: [
                Content(
                  id: '1-2-1-1',
                  text: 'To build your first Flutter app, start by creating a new project using the command `flutter create my_first_app`. This will generate a basic Flutter project structure with boilerplate code.',
                ),
              ],
            ),
            SubChapter(
              id: '1-2-2',
              title: 'Understanding the Widget Tree',
              contents: [
                Content(
                  id: '1-2-2-1',
                  text: 'Flutter apps are built using widgets. The widget tree represents the hierarchy of widgets in your app.',
                ),
                Content(
                  id: '1-2-2-2',
                  text: 'Every widget has a parent and can have multiple children. Understanding how widgets interact is key to mastering Flutter development.',
                ),
              ],
            ),
            SubChapter(
              id: '1-2-3',
              title: 'Running the App',
              contents: [
                Content(
                  id: '1-2-3-1',
                  text: 'Once your project is set up, you can run it on an emulator or physical device using the command `flutter run`.',
                ),
                Content(
                  id: '1-2-3-2',
                  text: 'Use hot reload (`r`) to quickly see changes without restarting the app.',
                ),
              ],
            ),
          ],
          exercise: Exercise(
            id: 'ex-1-2',
            title: 'Building Your First Flutter App Quiz',
            description: 'Test your understanding of building a basic Flutter app.',
            questions: [
              Question(
                id: 'q-1-2-1',
                question: 'What command is used to create a new Flutter project?',
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
                question: 'What is the purpose of the widget tree in Flutter?',
                options: [
                  Option(id: 'opt-1-2-2-a', text: 'To manage app state'),
                  Option(id: 'opt-1-2-2-b', text: 'To define the app\'s UI hierarchy'),
                  Option(id: 'opt-1-2-2-c', text: 'To handle network requests'),
                  Option(id: 'opt-1-2-2-d', text: 'To store user preferences'),
                ],
                correctOptionId: 'opt-1-2-2-b',
              ),
              Question(
                id: 'q-1-2-3',
                question: 'Which command allows you to quickly see changes in your running app?',
                options: [
                  Option(id: 'opt-1-2-3-a', text: 'flutter restart'),
                  Option(id: 'opt-1-2-3-b', text: 'flutter run'),
                  Option(id: 'opt-1-2-3-c', text: 'hot reload'),
                  Option(id: 'opt-1-2-3-d', text: 'cold reload'),
                ],
                correctOptionId: 'opt-1-2-3-c',
              ),
            ],
          ),
        ),
      ],
    ),
    Book(
      id: '1',
      title: 'Flutter Development',
      author: 'John Doe',
      imageUrl: 'https://picsum.photos/id/24/400/600',
      rating: 4.5,
      progress: 0.35,
      chapters: [
        Chapter(
          id: '1-1',
          title: 'Introduction to Flutter',
          subChapters: [
            SubChapter(
              id: '1-1-1',
              title: 'What is Flutter?',
              contents: [
                Content(
                  id: '1-1-1-1',
                  text: 'Flutter is an open-source UI software development kit created by Google.',
                ),
                Content(
                  id: '1-1-1-2',
                  text: 'It is used to develop cross-platform applications from a single codebase for any platform, including iOS, Android, Linux, macOS, Windows, and the web.',
                ),
                Content(
                  id: '1-1-1-3',
                  text: 'Flutter offers a reactive and declarative programming style. It is known for its fast development capabilities, expressive UI, and native performance.',
                ),
                Content(
                  id: '1-1-1-4',
                  text: 'With Flutter, developers can create high-performance applications that feel natural on different platforms, all from a single codebase. This helps decrease development costs and time-to-market for mobile apps.',
                ),
              ],
            ),
            SubChapter(
              id: '1-1-2',
              title: 'Flutter Architecture',
              contents: [
                Content(
                  id: '1-1-2-1',
                  text: "Flutter's architecture is built on three main layers:",
                ),
                Content(
                  id: '1-1-2-2',
                  text: "1. Framework Layer: This is the highest level layer that most developers interact with. It contains high-level features like widgets, animation, painting, and gestures.",
                ),
                Content(
                  id: '1-1-2-3',
                  text: "2. Engine Layer: Written in C++, this layer provides low-level implementations of Flutter's core APIs, including graphics, text layout, file and network I/O, and plugin architecture.",
                ),
                Content(
                  id: '1-1-2-4',
                  text: "3. Embedder Layer: Platform-specific code that provides entry points for platform channels, lifecycle events, and surface rendering.",
                ),
                Content(
                  id: '1-1-2-5',
                  text: "Flutter's architecture is designed for fast rendering and flexibility across platforms. The rendering pipeline is optimized for 60 or 120fps performance, ensuring smooth animations and transitions.",
                ),
              ],
            ),
            SubChapter(
              id: '1-1-3',
              title: 'Getting Started with Flutter',
              contents: [
                Content(
                  id: '1-1-3-1',
                  text: 'To get started with Flutter, you need to set up your development environment:',
                ),
                Content(
                  id: '1-1-3-2',
                  text: '1. Install Flutter SDK: Download and install the Flutter SDK from flutter.dev',
                ),
                Content(
                  id: '1-1-3-3',
                  text: '2. Set up an editor: Flutter supports various IDEs like Android Studio, IntelliJ IDEA, and VS Code with Flutter and Dart plugins.',
                ),
                Content(
                  id: '1-1-3-4',
                  text: '3. Create a new Flutter project: Use the command `flutter create my_app` to create a new project.',
                ),
                Content(
                  id: '1-1-3-5',
                  text: '4. Run your app: Connect a device or start an emulator, then run `flutter run` in your project directory.',
                ),
                Content(
                  id: '1-1-3-6',
                  text: "Flutter's hot reload feature makes development fast and interactive. When you make changes to your code, you can see them reflected in your running app in milliseconds, without losing the current state.",
                ),
              ],
            ),
          ],
          exercise: Exercise(
            id: 'ex-1-1',
            title: 'Introduction to Flutter Quiz',
            description: 'Test your knowledge of Flutter basics with this quick quiz.',
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
                question: 'Which of the following is NOT a layer in Flutter\'s architecture?',
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
        ),
        Chapter(
          id: '1-2',
          title: 'Building Your First Flutter App',
          subChapters: [
            SubChapter(
              id: '1-2-1',
              title: 'Setting Up the Project',
              contents: [
                Content(
                  id: '1-2-1-1',
                  text: 'To build your first Flutter app, start by creating a new project using the command `flutter create my_first_app`. This will generate a basic Flutter project structure with boilerplate code.',
                ),
              ],
            ),
            SubChapter(
              id: '1-2-2',
              title: 'Understanding the Widget Tree',
              contents: [
                Content(
                  id: '1-2-2-1',
                  text: 'Flutter apps are built using widgets. The widget tree represents the hierarchy of widgets in your app.',
                ),
                Content(
                  id: '1-2-2-2',
                  text: 'Every widget has a parent and can have multiple children. Understanding how widgets interact is key to mastering Flutter development.',
                ),
              ],
            ),
            SubChapter(
              id: '1-2-3',
              title: 'Running the App',
              contents: [
                Content(
                  id: '1-2-3-1',
                  text: 'Once your project is set up, you can run it on an emulator or physical device using the command `flutter run`.',
                ),
                Content(
                  id: '1-2-3-2',
                  text: 'Use hot reload (`r`) to quickly see changes without restarting the app.',
                ),
              ],
            ),
          ],
          exercise: Exercise(
            id: 'ex-1-2',
            title: 'Building Your First Flutter App Quiz',
            description: 'Test your understanding of building a basic Flutter app.',
            questions: [
              Question(
                id: 'q-1-2-1',
                question: 'What command is used to create a new Flutter project?',
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
                question: 'What is the purpose of the widget tree in Flutter?',
                options: [
                  Option(id: 'opt-1-2-2-a', text: 'To manage app state'),
                  Option(id: 'opt-1-2-2-b', text: 'To define the app\'s UI hierarchy'),
                  Option(id: 'opt-1-2-2-c', text: 'To handle network requests'),
                  Option(id: 'opt-1-2-2-d', text: 'To store user preferences'),
                ],
                correctOptionId: 'opt-1-2-2-b',
              ),
              Question(
                id: 'q-1-2-3',
                question: 'Which command allows you to quickly see changes in your running app?',
                options: [
                  Option(id: 'opt-1-2-3-a', text: 'flutter restart'),
                  Option(id: 'opt-1-2-3-b', text: 'flutter run'),
                  Option(id: 'opt-1-2-3-c', text: 'hot reload'),
                  Option(id: 'opt-1-2-3-d', text: 'cold reload'),
                ],
                correctOptionId: 'opt-1-2-3-c',
              ),
            ],
          ),
        ),
      ],
    ),
  ];
}



List<Book> getMyBooks() {
  return [
    Book(
      id: '1',
      title: 'Flutter Development',
      author: 'John Doe',
      imageUrl: 'https://picsum.photos/id/24/400/600',
      rating: 4.5,
      progress: 0.35,
      chapters: [
        Chapter(
          id: '1-1',
          title: 'Introduction to Flutter',
          subChapters: [
            SubChapter(
              id: '1-1-1',
              title: 'What is Flutter?',
              contents: [
                Content(
                  id: '1-1-1-1',
                  text: 'Flutter is an open-source UI software development kit created by Google.',
                ),
                Content(
                  id: '1-1-1-2',
                  text: 'It is used to develop cross-platform applications from a single codebase for any platform, including iOS, Android, Linux, macOS, Windows, and the web.',
                ),
                Content(
                  id: '1-1-1-3',
                  text: 'Flutter offers a reactive and declarative programming style. It is known for its fast development capabilities, expressive UI, and native performance.',
                ),
                Content(
                  id: '1-1-1-4',
                  text: 'With Flutter, developers can create high-performance applications that feel natural on different platforms, all from a single codebase. This helps decrease development costs and time-to-market for mobile apps.',
                ),
              ],
            ),
            SubChapter(
              id: '1-1-2',
              title: 'Flutter Architecture',
              contents: [
                Content(
                  id: '1-1-2-1',
                  text: "Flutter's architecture is built on three main layers:",
                ),
                Content(
                  id: '1-1-2-2',
                  text: "1. Framework Layer: This is the highest level layer that most developers interact with. It contains high-level features like widgets, animation, painting, and gestures.",
                ),
                Content(
                  id: '1-1-2-3',
                  text: "2. Engine Layer: Written in C++, this layer provides low-level implementations of Flutter's core APIs, including graphics, text layout, file and network I/O, and plugin architecture.",
                ),
                Content(
                  id: '1-1-2-4',
                  text: "3. Embedder Layer: Platform-specific code that provides entry points for platform channels, lifecycle events, and surface rendering.",
                ),
                Content(
                  id: '1-1-2-5',
                  text: "Flutter's architecture is designed for fast rendering and flexibility across platforms. The rendering pipeline is optimized for 60 or 120fps performance, ensuring smooth animations and transitions.",
                ),
              ],
            ),
            SubChapter(
              id: '1-1-3',
              title: 'Getting Started with Flutter',
              contents: [
                Content(
                  id: '1-1-3-1',
                  text: 'To get started with Flutter, you need to set up your development environment:',
                ),
                Content(
                  id: '1-1-3-2',
                  text: '1. Install Flutter SDK: Download and install the Flutter SDK from flutter.dev',
                ),
                Content(
                  id: '1-1-3-3',
                  text: '2. Set up an editor: Flutter supports various IDEs like Android Studio, IntelliJ IDEA, and VS Code with Flutter and Dart plugins.',
                ),
                Content(
                  id: '1-1-3-4',
                  text: '3. Create a new Flutter project: Use the command `flutter create my_app` to create a new project.',
                ),
                Content(
                  id: '1-1-3-5',
                  text: '4. Run your app: Connect a device or start an emulator, then run `flutter run` in your project directory.',
                ),
                Content(
                  id: '1-1-3-6',
                  text: "Flutter's hot reload feature makes development fast and interactive. When you make changes to your code, you can see them reflected in your running app in milliseconds, without losing the current state.",
                ),
              ],
            ),
          ],
          exercise: Exercise(
            id: 'ex-1-1',
            title: 'Introduction to Flutter Quiz',
            description: 'Test your knowledge of Flutter basics with this quick quiz.',
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
                question: 'Which of the following is NOT a layer in Flutter\'s architecture?',
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
        ),
        Chapter(
          id: '1-2',
          title: 'Building Your First Flutter App',
          subChapters: [
            SubChapter(
              id: '1-2-1',
              title: 'Setting Up the Project',
              contents: [
                Content(
                  id: '1-2-1-1',
                  text: 'To build your first Flutter app, start by creating a new project using the command `flutter create my_first_app`. This will generate a basic Flutter project structure with boilerplate code.',
                ),
              ],
            ),
            SubChapter(
              id: '1-2-2',
              title: 'Understanding the Widget Tree',
              contents: [
                Content(
                  id: '1-2-2-1',
                  text: 'Flutter apps are built using widgets. The widget tree represents the hierarchy of widgets in your app.',
                ),
                Content(
                  id: '1-2-2-2',
                  text: 'Every widget has a parent and can have multiple children. Understanding how widgets interact is key to mastering Flutter development.',
                ),
              ],
            ),
            SubChapter(
              id: '1-2-3',
              title: 'Running the App',
              contents: [
                Content(
                  id: '1-2-3-1',
                  text: 'Once your project is set up, you can run it on an emulator or physical device using the command `flutter run`.',
                ),
                Content(
                  id: '1-2-3-2',
                  text: 'Use hot reload (`r`) to quickly see changes without restarting the app.',
                ),
              ],
            ),
          ],
          exercise: Exercise(
            id: 'ex-1-2',
            title: 'Building Your First Flutter App Quiz',
            description: 'Test your understanding of building a basic Flutter app.',
            questions: [
              Question(
                id: 'q-1-2-1',
                question: 'What command is used to create a new Flutter project?',
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
                question: 'What is the purpose of the widget tree in Flutter?',
                options: [
                  Option(id: 'opt-1-2-2-a', text: 'To manage app state'),
                  Option(id: 'opt-1-2-2-b', text: 'To define the app\'s UI hierarchy'),
                  Option(id: 'opt-1-2-2-c', text: 'To handle network requests'),
                  Option(id: 'opt-1-2-2-d', text: 'To store user preferences'),
                ],
                correctOptionId: 'opt-1-2-2-b',
              ),
              Question(
                id: 'q-1-2-3',
                question: 'Which command allows you to quickly see changes in your running app?',
                options: [
                  Option(id: 'opt-1-2-3-a', text: 'flutter restart'),
                  Option(id: 'opt-1-2-3-b', text: 'flutter run'),
                  Option(id: 'opt-1-2-3-c', text: 'hot reload'),
                  Option(id: 'opt-1-2-3-d', text: 'cold reload'),
                ],
                correctOptionId: 'opt-1-2-3-c',
              ),
            ],
          ),
        ),
      ],
    ),
    Book(
      id: '2',
      title: 'Flutter Development',
      author: 'John Doe',
      imageUrl: 'https://picsum.photos/id/24/400/600',
      rating: 4.5,
      progress: 0.35,
      chapters: [
        Chapter(
          id: '1-1',
          title: 'Introduction to Flutter',
          subChapters: [
            SubChapter(
              id: '1-1-1',
              title: 'What is Flutter?',
              contents: [
                Content(
                  id: '1-1-1-1',
                  text: 'Flutter is an open-source UI software development kit created by Google.',
                ),
                Content(
                  id: '1-1-1-2',
                  text: 'It is used to develop cross-platform applications from a single codebase for any platform, including iOS, Android, Linux, macOS, Windows, and the web.',
                ),
                Content(
                  id: '1-1-1-3',
                  text: 'Flutter offers a reactive and declarative programming style. It is known for its fast development capabilities, expressive UI, and native performance.',
                ),
                Content(
                  id: '1-1-1-4',
                  text: 'With Flutter, developers can create high-performance applications that feel natural on different platforms, all from a single codebase. This helps decrease development costs and time-to-market for mobile apps.',
                ),
              ],
            ),
            SubChapter(
              id: '1-1-2',
              title: 'Flutter Architecture',
              contents: [
                Content(
                  id: '1-1-2-1',
                  text: "Flutter's architecture is built on three main layers:",
                ),
                Content(
                  id: '1-1-2-2',
                  text: "1. Framework Layer: This is the highest level layer that most developers interact with. It contains high-level features like widgets, animation, painting, and gestures.",
                ),
                Content(
                  id: '1-1-2-3',
                  text: "2. Engine Layer: Written in C++, this layer provides low-level implementations of Flutter's core APIs, including graphics, text layout, file and network I/O, and plugin architecture.",
                ),
                Content(
                  id: '1-1-2-4',
                  text: "3. Embedder Layer: Platform-specific code that provides entry points for platform channels, lifecycle events, and surface rendering.",
                ),
                Content(
                  id: '1-1-2-5',
                  text: "Flutter's architecture is designed for fast rendering and flexibility across platforms. The rendering pipeline is optimized for 60 or 120fps performance, ensuring smooth animations and transitions.",
                ),
              ],
            ),
            SubChapter(
              id: '1-1-3',
              title: 'Getting Started with Flutter',
              contents: [
                Content(
                  id: '1-1-3-1',
                  text: 'To get started with Flutter, you need to set up your development environment:',
                ),
                Content(
                  id: '1-1-3-2',
                  text: '1. Install Flutter SDK: Download and install the Flutter SDK from flutter.dev',
                ),
                Content(
                  id: '1-1-3-3',
                  text: '2. Set up an editor: Flutter supports various IDEs like Android Studio, IntelliJ IDEA, and VS Code with Flutter and Dart plugins.',
                ),
                Content(
                  id: '1-1-3-4',
                  text: '3. Create a new Flutter project: Use the command `flutter create my_app` to create a new project.',
                ),
                Content(
                  id: '1-1-3-5',
                  text: '4. Run your app: Connect a device or start an emulator, then run `flutter run` in your project directory.',
                ),
                Content(
                  id: '1-1-3-6',
                  text: "Flutter's hot reload feature makes development fast and interactive. When you make changes to your code, you can see them reflected in your running app in milliseconds, without losing the current state.",
                ),
              ],
            ),
          ],
          exercise: Exercise(
            id: 'ex-1-1',
            title: 'Introduction to Flutter Quiz',
            description: 'Test your knowledge of Flutter basics with this quick quiz.',
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
                question: 'Which of the following is NOT a layer in Flutter\'s architecture?',
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
        ),
        Chapter(
          id: '1-2',
          title: 'Building Your First Flutter App',
          subChapters: [
            SubChapter(
              id: '1-2-1',
              title: 'Setting Up the Project',
              contents: [
                Content(
                  id: '1-2-1-1',
                  text: 'To build your first Flutter app, start by creating a new project using the command `flutter create my_first_app`. This will generate a basic Flutter project structure with boilerplate code.',
                ),
              ],
            ),
            SubChapter(
              id: '1-2-2',
              title: 'Understanding the Widget Tree',
              contents: [
                Content(
                  id: '1-2-2-1',
                  text: 'Flutter apps are built using widgets. The widget tree represents the hierarchy of widgets in your app.',
                ),
                Content(
                  id: '1-2-2-2',
                  text: 'Every widget has a parent and can have multiple children. Understanding how widgets interact is key to mastering Flutter development.',
                ),
              ],
            ),
            SubChapter(
              id: '1-2-3',
              title: 'Running the App',
              contents: [
                Content(
                  id: '1-2-3-1',
                  text: 'Once your project is set up, you can run it on an emulator or physical device using the command `flutter run`.',
                ),
                Content(
                  id: '1-2-3-2',
                  text: 'Use hot reload (`r`) to quickly see changes without restarting the app.',
                ),
              ],
            ),
          ],
          exercise: Exercise(
            id: 'ex-1-2',
            title: 'Building Your First Flutter App Quiz',
            description: 'Test your understanding of building a basic Flutter app.',
            questions: [
              Question(
                id: 'q-1-2-1',
                question: 'What command is used to create a new Flutter project?',
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
                question: 'What is the purpose of the widget tree in Flutter?',
                options: [
                  Option(id: 'opt-1-2-2-a', text: 'To manage app state'),
                  Option(id: 'opt-1-2-2-b', text: 'To define the app\'s UI hierarchy'),
                  Option(id: 'opt-1-2-2-c', text: 'To handle network requests'),
                  Option(id: 'opt-1-2-2-d', text: 'To store user preferences'),
                ],
                correctOptionId: 'opt-1-2-2-b',
              ),
              Question(
                id: 'q-1-2-3',
                question: 'Which command allows you to quickly see changes in your running app?',
                options: [
                  Option(id: 'opt-1-2-3-a', text: 'flutter restart'),
                  Option(id: 'opt-1-2-3-b', text: 'flutter run'),
                  Option(id: 'opt-1-2-3-c', text: 'hot reload'),
                  Option(id: 'opt-1-2-3-d', text: 'cold reload'),
                ],
                correctOptionId: 'opt-1-2-3-c',
              ),
            ],
          ),
        ),
      ],
    ),
  ];
}