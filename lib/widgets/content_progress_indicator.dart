// widgets/content_progress_indicator.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentProgressIndicator extends StatelessWidget {
  final int currentPage;
  final int totalPages;

  const ContentProgressIndicator({
    Key? key,
    required this.currentPage,
    required this.totalPages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: totalPages > 0 ? (currentPage + 1) / totalPages : 0,
      backgroundColor: Colors.grey[800],
      valueColor: const AlwaysStoppedAnimation<Color>(Colors.tealAccent),
      minHeight: 4,
    );
  }
}
