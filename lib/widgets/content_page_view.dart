// widgets/content_page_view.dart
import 'package:flutter/cupertino.dart';

import 'content_text_page.dart';

class ContentPageView extends StatelessWidget {
  final PageController pageController;
  final List<dynamic> contents; // Replace with your actual Content model
  final Function(int) onPageChanged;

  const ContentPageView({
    Key? key,
    required this.pageController,
    required this.contents,
    required this.onPageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: contents.length,
      onPageChanged: onPageChanged,
      itemBuilder: (context, index) {
        return ContentTextPage(
          text: contents[index].text,
        );
      },
    );
  }
}