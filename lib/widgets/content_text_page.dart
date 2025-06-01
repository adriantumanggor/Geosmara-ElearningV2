
// widgets/content_text_page.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentTextPage extends StatelessWidget {
  final String text;

  const ContentTextPage({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: SelectableText(
        text,
        style: TextStyle(
          fontSize: 16,
          height: 1.6,
          color: Colors.grey[300],
        ),
      ),
    );
  }
}