// widgets/content_app_bar.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const ContentAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
