import 'package:flutter/material.dart';
import '../models/book.dart';
import 'content_screen.dart';
import 'exercise_screen.dart';
import '../services/api_service.dart';

class BookDetailScreen extends StatefulWidget {
  final String bookId;

  const BookDetailScreen({Key? key, required this.bookId}) : super(key: key);

  @override
  _BookDetailScreenState createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  late Future<Book?> futureBook;
  Map<String, bool> expandedChapters = {};

  @override
  void initState() {
    super.initState();
    futureBook = ApiService.getBookDetail(widget.bookId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: FutureBuilder<Book?>(
        future: futureBook,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data == null) {
            return Center(child: Text('Book not found'));
          }

          final book = snapshot.data!;

          // Initialize expansion state (only once)
          if (expandedChapters.isEmpty) {
            for (var chapter in book.chapters) {
              expandedChapters[chapter.id] = false;
            }
          }

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildBookHeader(context, book),
                _buildChaptersList(book),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildBookHeader(BuildContext context, Book book) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  book.imageUrl,
                  height: 180,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.title,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'by ${book.author}',
                      style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    if (book.chapters.isNotEmpty &&
                        book.chapters[0].subChapters.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContentScreen(
                            subChapterId: book.chapters[0].subChapters[0].id,
                            subChapterTitle: book.chapters[0].subChapters[0].title,
                          ),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.tealAccent,
                    foregroundColor: Colors.black87,
                    padding: EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: Text(
                    'Start Reading',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Divider(height: 32, thickness: 1, color: Colors.grey[800]),
          Text(
            'Chapters',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildChaptersList(Book book) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: book.chapters.length,
      itemBuilder: (context, index) {
        final chapter = book.chapters[index];
        return Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              title: Text(
                chapter.title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                '${chapter.subChapters.length} section${chapter.subChapters.length != 1 ? 's' : ''}',
                style: TextStyle(fontSize: 14, color: Colors.grey[400]),
              ),
              trailing: IconButton(
                icon: Icon(
                  expandedChapters[chapter.id]!
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                ),
                onPressed: () {
                  setState(() {
                    expandedChapters[chapter.id] = !expandedChapters[chapter.id]!;
                  });
                },
              ),
              onTap: () {
                setState(() {
                  expandedChapters[chapter.id] = !expandedChapters[chapter.id]!;
                });
              },
            ),
            if (expandedChapters[chapter.id]!)
              Container(
                color: Colors.grey[900],
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: chapter.subChapters.length + (chapter.exercise != null ? 1 : 0),
                  itemBuilder: (context, contentIndex) {
                    if (chapter.exercise != null &&
                        contentIndex == chapter.subChapters.length) {
                      return ListTile(
                        contentPadding: EdgeInsets.only(left: 32, right: 16),
                        dense: true,
                        title: Text(
                          'Exercise',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.tealAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        leading: Icon(Icons.quiz, size: 18, color: Colors.tealAccent),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ExerciseScreen(
                                exercise: chapter.exercise!,
                                chapterTitle: chapter.title,
                              ),
                            ),
                          );
                        },
                      );
                    }

                    final subChapter = chapter.subChapters[contentIndex];
                    return ListTile(
                      contentPadding: EdgeInsets.only(left: 32, right: 16),
                      dense: true,
                      title: Text(
                        subChapter.title,
                        style: TextStyle(fontSize: 14, color: Colors.white70),
                      ),
                      leading: Icon(Icons.article_outlined, size: 18, color: Colors.grey[400]),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContentScreen(
                              subChapterId: subChapter.id,
                              subChapterTitle: subChapter.title,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey[800],
              indent: 16,
              endIndent: 16,
            ),
          ],
        );
      },
    );
  }
}
