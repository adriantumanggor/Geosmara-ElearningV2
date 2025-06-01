// ================================================================================
// 3. CONTENT DATABASE (Separated for better management)
// ================================================================================

import '../models/content.dart';

final Map<String, List<Content>> contentData = {
  // Flutter - What is Flutter?
  '1-1-1': [
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
      text: 'With Flutter, developers can create high-performance applications that feel natural on different platforms, all from a single codebase.',
    ),
  ],

  // Flutter - Architecture
  '1-1-2': [
    Content(
      id: '1-1-2-1',
      text: "Flutter's architecture is built on three main layers:",
    ),
    Content(
      id: '1-1-2-2',
      text: "1. Framework Layer: Contains high-level features like widgets, animation, painting, and gestures.",
    ),
    Content(
      id: '1-1-2-3',
      text: "2. Engine Layer: Written in C++, provides low-level implementations including graphics and text layout.",
    ),
    Content(
      id: '1-1-2-4',
      text: "3. Embedder Layer: Platform-specific code for platform channels and lifecycle events.",
    ),
    Content(
      id: '1-1-2-5',
      text: "The architecture is optimized for 60-120fps performance with smooth animations.",
    ),
  ],

  // Flutter - Getting Started
  '1-1-3': [
    Content(
      id: '1-1-3-1',
      text: 'To get started with Flutter, you need to set up your development environment:',
    ),
    Content(
      id: '1-1-3-2',
      text: '1. Install Flutter SDK from flutter.dev',
    ),
    Content(
      id: '1-1-3-3',
      text: '2. Set up IDE (Android Studio, IntelliJ, or VS Code) with Flutter plugins',
    ),
    Content(
      id: '1-1-3-4',
      text: '3. Create project: flutter create my_app',
    ),
    Content(
      id: '1-1-3-5',
      text: '4. Run app: flutter run',
    ),
    Content(
      id: '1-1-3-6',
      text: 'Hot reload feature enables fast development with instant code changes.',
    ),
  ],

  // Flutter - Project Setup
  '1-2-1': [
    Content(
      id: '1-2-1-1',
      text: 'Create a new Flutter project using: flutter create my_first_app',
    ),
    Content(
      id: '1-2-1-2',
      text: 'Project structure includes lib/ for Dart code, android/ and ios/ for platform configs.',
    ),
    Content(
      id: '1-2-1-3',
      text: 'The main.dart file in lib/ folder is your app entry point.',
    ),
  ],

  // Add more content for other subchapters as needed...
  '1-2-2': [
    Content(id: '1-2-2-1', text: 'Flutter apps are built using widgets organized in a tree structure.'),
    Content(id: '1-2-2-2', text: 'Every widget has a parent and can have multiple children.'),
  ],

  '1-2-3': [
    Content(id: '1-2-3-1', text: 'Run your app using: flutter run'),
    Content(id: '1-2-3-2', text: 'Use hot reload (r) for quick changes, hot restart (R) for full restart.'),
  ],

  // React Native content
  '2-1-1': [
    Content(id: '2-1-1-1', text: 'React Native is a framework by Facebook for mobile app development.'),
    Content(id: '2-1-1-2', text: 'Build native apps for iOS and Android using JavaScript and React.'),
  ],

  // Swift content
  '3-1-1': [
    Content(id: '3-1-1-1', text: 'Swift is Apple\'s programming language for iOS, macOS, watchOS, and tvOS.'),
    Content(id: '3-1-1-2', text: 'Swift is designed to be fast, safe, and expressive.'),
  ],
};
