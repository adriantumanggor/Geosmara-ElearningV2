// widgets/content_navigation_controls.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentNavigationControls extends StatelessWidget {
  final int currentPageIndex;
  final int totalPages;
  final Function(int) onNavigate;

  const ContentNavigationControls({
    Key? key,
    required this.currentPageIndex,
    required this.totalPages,
    required this.onNavigate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        border: Border(
          top: BorderSide(color: Colors.grey[800]!, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _NavigationButton(
            icon: Icons.arrow_back_ios,
            isEnabled: currentPageIndex > 0,
            onPressed: () => onNavigate(currentPageIndex - 1),
          ),
          _PageIndicator(
            currentPage: currentPageIndex + 1,
            totalPages: totalPages,
          ),
          _NavigationButton(
            icon: Icons.arrow_forward_ios,
            isEnabled: currentPageIndex < totalPages - 1,
            onPressed: () => onNavigate(currentPageIndex + 1),
          ),
        ],
      ),
    );
  }
}

class _NavigationButton extends StatelessWidget {
  final IconData icon;
  final bool isEnabled;
  final VoidCallback onPressed;

  const _NavigationButton({
    required this.icon,
    required this.isEnabled,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: isEnabled ? onPressed : null,
      icon: Icon(icon),
      color: isEnabled ? Colors.white : Colors.grey[600],
    );
  }
}

class _PageIndicator extends StatelessWidget {
  final int currentPage;
  final int totalPages;

  const _PageIndicator({
    required this.currentPage,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$currentPage / $totalPages',
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

