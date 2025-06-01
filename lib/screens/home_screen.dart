// screens/home_screen.dart
import 'package:flutter/material.dart';
import '../models/book.dart';
import '../services/api_service.dart';
import '../widgets/book_slider_widget.dart';
import '../widgets/greeting_section_widget.dart';
import '../data_dummy/dummy_book_card.dart'; // Import data dummy

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double currentBalance = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GreetingSection(),
              SizedBox(height: 24),
              _buildSectionTitle('Recommended for you'),
              FutureBuilder<List<Book>>(
                future: ApiService.getRecommendedBooks(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error loading books'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text('No books available'));
                  } else {
                    return BookSlider(books: snapshot.data!);
                  }
                },
              ),
              SizedBox(height: 24),
              _buildSectionTitle('Best Sellers'),
              FutureBuilder<List<Book>>(
                future: getBooks(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error loading books'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text('No books available'));
                  } else {
                    return BookSlider(books: snapshot.data!);
                  }
                },
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}