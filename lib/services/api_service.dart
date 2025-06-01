import '../data_dummy/book_data_service.dart';
import '../models/book.dart';
import '../models/content.dart';
import '../models/exercise.dart';

class ApiService {
  static Future<List<Book>> getRecommendedBooks() async {
    return BookDataService.getRecommendedBooks();
  }

  static Future<Book?> getBookDetail(String id) async {
    return BookDataService.getBookById(id);
  }

  static Future<List<Content>> getSubChapterContent(String subChapterId) async {
    return BookDataService.getContentsBySubChapterId(subChapterId);
  }

  static Future<Exercise?> getChapterExercise(String chapterId) async {
    return BookDataService.getExerciseByChapterId(chapterId);
  }
}
