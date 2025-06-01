// content_screen.dart
import 'package:flutter/material.dart';
import '../models/subchapter.dart';
import '../services/api_service.dart';
import '../widgets/content_app_bar.dart';
import '../widgets/content_progress_indicator.dart';
import '../widgets/content_page_view.dart';
import '../widgets/content_navigation_controls.dart';

class ContentScreen extends StatefulWidget {
  final String subChapterId;
  final String subChapterTitle;

  const ContentScreen({
    Key? key,
    required this.subChapterId,
    required this.subChapterTitle,
  }) : super(key: key);

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  late final PageController _pageController;
  int _currentPageIndex = 0;
  SubChapter? _subChapter;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPageIndex);
    _loadSubChapterData();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _loadSubChapterData() async {
    try {
      final contents = await ApiService.getSubChapterContent(widget.subChapterId);
      if (mounted) {
        setState(() {
          _subChapter = SubChapter(
            id: widget.subChapterId,
            title: widget.subChapterTitle,
            contents: contents,
          );
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        _showErrorSnackBar(e.toString());
      }
    }
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  void _navigateToPage(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Error loading content: $message'),
        backgroundColor: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ContentAppBar(
        title: _subChapter?.title ?? "Loading...",
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const _LoadingWidget();
    }

    if (_subChapter == null || _subChapter!.contents.isEmpty) {
      return const _EmptyContentWidget();
    }

    return Column(
      children: [
        ContentProgressIndicator(
          currentPage: _currentPageIndex,
          totalPages: _subChapter!.contents.length,
        ),
        Expanded(
          child: ContentPageView(
            pageController: _pageController,
            contents: _subChapter!.contents,
            onPageChanged: _onPageChanged,
          ),
        ),
        ContentNavigationControls(
          currentPageIndex: _currentPageIndex,
          totalPages: _subChapter!.contents.length,
          onNavigate: _navigateToPage,
        ),
      ],
    );
  }
}

// Private widgets for this screen
class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.tealAccent),
      ),
    );
  }
}

class _EmptyContentWidget extends StatelessWidget {
  const _EmptyContentWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.article_outlined,
            size: 64,
            color: Colors.grey[600],
          ),
          const SizedBox(height: 16),
          Text(
            "No content available",
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}