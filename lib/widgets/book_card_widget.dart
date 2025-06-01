import 'package:flutter/material.dart';
import '../models/book.dart';
import '../screens/book_detail_screen.dart';

class BookCard extends StatelessWidget {
  final Book book;

  const BookCard({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: () => _navigateToBookDetail(context), // Handle tap on the entire card
        borderRadius: BorderRadius.circular(16), // Match the card's border radius
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBookCover(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: _buildBookInfo(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookCover() {
    return Container(
      width: 120,
      height: double.infinity,
      child: Image.network(
        book.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildBookInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildBookTitle(),
        SizedBox(height: 4),
        _buildAuthorName(),
        SizedBox(height: 8),
        _buildRating(),
        Spacer(),
      ],
    );
  }

  Widget _buildBookTitle() {
    return Text(
      book.title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildAuthorName() {
    return Text(
      'by ${book.author}',
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey[400],
      ),
    );
  }

  Widget _buildRating() {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.amber, size: 18),
        SizedBox(width: 4),
        Text(
          book.rating.toString(),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  void _navigateToBookDetail(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookDetailScreen(bookId: book.id),
      ),
    );
  }
}