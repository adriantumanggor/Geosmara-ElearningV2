// ================================================================================
// FLUTTER BOOK APP - DUMMY DATA SERVICE & API SPECIFICATION
// ================================================================================

import '../models/book.dart';
import '../models/chapter.dart';
import '../models/subchapter.dart';
import '../models/content.dart';
import '../models/exercise.dart';
import 'content_data.dart';
import 'exercise_data.dart';

// ================================================================================
// 1. DUMMY DATA SERVICE
// ================================================================================

class BookDataService {
  // ----------------------------------------------------------------------------
  // HOME SCREEN DATA - Books List (Lightweight)
  // API: GET /api/books/recommended
  // ----------------------------------------------------------------------------
  static List<Book> getRecommendedBooks() {
    return [
      Book(
        id: '1',
        title: 'Flutter Development Mastery',
        author: 'John Doe',
        imageUrl: 'https://picsum.photos/id/24/400/600',
        rating: 4.5,
      ),
      Book(
        id: '2',
        title: 'React Native Complete Guide',
        author: 'Jane Smith',
        imageUrl: 'https://picsum.photos/id/25/400/600',
        rating: 4.2,
      ),
      Book(
        id: '3',
        title: 'iOS Swift Programming',
        author: 'Mike Johnson',
        imageUrl: 'https://picsum.photos/id/26/400/600',
        rating: 4.7,
      ),
      Book(
        id: '4',
        title: 'Android Kotlin Development',
        author: 'Sarah Wilson',
        imageUrl: 'https://picsum.photos/id/27/400/600',
        rating: 4.3,
      ),
      Book(
        id: '5',
        title: 'Web Development with Vue.js',
        author: 'David Brown',
        imageUrl: 'https://picsum.photos/id/28/400/600',
        rating: 4.6,
      ),
    ];
  }

  // ----------------------------------------------------------------------------
  // BOOK DETAIL SCREEN DATA - Full Book with Chapters
  // API: GET /api/books/{bookId}
  // ----------------------------------------------------------------------------
  static Book? getBookById(String bookId) {
    switch (bookId) {
      case '1':
        return _buildFlutterBook();
      case '2':
        return _buildReactNativeBook();
      case '3':
        return _buildSwiftBook();
      case '4':
        return _buildKotlinBook();
      case '5':
        return _buildVueBook();
      default:
        return null;
    }
  }

  // ----------------------------------------------------------------------------
  // CONTENT SCREEN DATA - SubChapter Contents
  // API: GET /api/subchapters/{subChapterId}/contents
  // ----------------------------------------------------------------------------
  static List<Content> getContentsBySubChapterId(String subChapterId) {
    return contentData[subChapterId] ?? [];
  }

  // ----------------------------------------------------------------------------
  // EXERCISE SCREEN DATA - Chapter Exercise
  // API: GET /api/chapters/{chapterId}/exercise
  // ----------------------------------------------------------------------------
  static Exercise? getExerciseByChapterId(String chapterId) {
    return exerciseData[chapterId];
  }
}

// ================================================================================
// 2. BOOK BUILDERS (Private Methods)
// ================================================================================

// Flutter Book
Book _buildFlutterBook() {
  return Book(
    id: '1',
    title: 'Flutter Development Mastery',
    author: 'John Doe',
    imageUrl: 'https://picsum.photos/id/24/400/600',
    rating: 4.5,
    progress: 0.35,
    chapters: [
      Chapter(
        id: '1-1',
        title: 'Introduction to Flutter',
        subChapters: [
          SubChapter(id: '1-1-1', title: 'What is Flutter?', contents: []),
          SubChapter(id: '1-1-2', title: 'Flutter Architecture', contents: []),
          SubChapter(id: '1-1-3', title: 'Getting Started', contents: []),
        ],
      ),
      Chapter(
        id: '1-2',
        title: 'Building Your First App',
        subChapters: [
          SubChapter(id: '1-2-1', title: 'Project Setup', contents: []),
          SubChapter(id: '1-2-2', title: 'Widget Tree', contents: []),
          SubChapter(id: '1-2-3', title: 'Running the App', contents: []),
        ],
      ),
      Chapter(
        id: '1-3',
        title: 'Widgets and Layouts',
        subChapters: [
          SubChapter(id: '1-3-1', title: 'Basic Widgets', contents: []),
          SubChapter(id: '1-3-2', title: 'Layout Widgets', contents: []),
          SubChapter(id: '1-3-3', title: 'Custom Widgets', contents: []),
        ],
      ),
    ],
  );
}

// React Native Book
Book _buildReactNativeBook() {
  return Book(
    id: '2',
    title: 'React Native Complete Guide',
    author: 'Jane Smith',
    imageUrl: 'https://picsum.photos/id/25/400/600',
    rating: 4.2,
    progress: 0.0,
    chapters: [
      Chapter(
        id: '2-1',
        title: 'React Native Fundamentals',
        subChapters: [
          SubChapter(id: '2-1-1', title: 'What is React Native?', contents: []),
          SubChapter(id: '2-1-2', title: 'Components & JSX', contents: []),
        ],
      ),
      Chapter(
        id: '2-2',
        title: 'Navigation & State',
        subChapters: [
          SubChapter(id: '2-2-1', title: 'React Navigation', contents: []),
          SubChapter(id: '2-2-2', title: 'State Management', contents: []),
        ],
      ),
    ],
  );
}

// Swift Book
Book _buildSwiftBook() {
  return Book(
    id: '3',
    title: 'iOS Swift Programming',
    author: 'Mike Johnson',
    imageUrl: 'https://picsum.photos/id/26/400/600',
    rating: 4.7,
    progress: 0.75,
    chapters: [
      Chapter(
        id: '3-1',
        title: 'Swift Fundamentals',
        subChapters: [
          SubChapter(id: '3-1-1', title: 'Swift Basics', contents: []),
          SubChapter(id: '3-1-2', title: 'Data Types', contents: []),
        ],
      ),
    ],
  );
}

// Kotlin Book
Book _buildKotlinBook() {
  return Book(
    id: '4',
    title: 'Android Kotlin Development',
    author: 'Sarah Wilson',
    imageUrl: 'https://picsum.photos/id/27/400/600',
    rating: 4.3,
    progress: 0.0,
    chapters: [
      Chapter(
        id: '4-1',
        title: 'Kotlin Basics',
        subChapters: [
          SubChapter(id: '4-1-1', title: 'Introduction to Kotlin', contents: []),
        ],
      ),
    ],
  );
}

// Vue Book
Book _buildVueBook() {
  return Book(
    id: '5',
    title: 'Web Development with Vue.js',
    author: 'David Brown',
    imageUrl: 'https://picsum.photos/id/28/400/600',
    rating: 4.6,
    progress: 0.50,
    chapters: [
      Chapter(
        id: '5-1',
        title: 'Vue.js Fundamentals',
        subChapters: [
          SubChapter(id: '5-1-1', title: 'What is Vue?', contents: []),
        ],
      ),
    ],
  );
}
