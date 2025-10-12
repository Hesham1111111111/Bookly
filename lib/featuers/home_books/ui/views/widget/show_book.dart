import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BookViewScreen extends StatefulWidget {
  final String webReaderLink;

  const BookViewScreen({super.key, required this.webReaderLink});

  @override
  State<BookViewScreen> createState() => _BookViewScreenState();
}

class _BookViewScreenState extends State<BookViewScreen> {
  late final WebViewController _controller;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    print('Loading link: ${widget.webReaderLink}');
    print('Loading link: ${widget.webReaderLink}');


    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (_) => setState(() => isLoading = true),
          onPageFinished: (_) => setState(() => isLoading = false),
        ),
      )
      ..loadRequest(Uri.parse(widget.webReaderLink));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Preview'),
        backgroundColor: Colors.orange,
        bottom: isLoading
            ? const PreferredSize(
                preferredSize: Size.fromHeight(4),
                child: LinearProgressIndicator(
                  color: Colors.orange,
                  backgroundColor: Colors.white54,
                ),
              )
            : null,
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
