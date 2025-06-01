import 'chapter.dart';

class Book {
  final String id;
  final String title;
  final String author;
  final String imageUrl;
  final double rating;
  final double progress;
  final List<Chapter> chapters;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.rating,
    this.progress = 0.0,
    this.chapters = const [],
  });
}


