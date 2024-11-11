import 'package:flutter/material.dart';
import 'package:memories/app/theme/app_theme_extensions.dart';
import 'package:memories/app/widgets/app_bar/template_app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatefulWidget {
  const WebView({
    required this.link,
    this.title,
    this.backgroundColor,
    super.key,
  });

  final String link;
  final String? title;
  final Color? backgroundColor;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  bool isLoading = true;
  late final webViewController = WebViewController()
    ..setBackgroundColor(context.colors.background)
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) =>
            const Center(child: CircularProgressIndicator()),
        onPageFinished: (finish) {
          setState(() {
            isLoading = false;
          });
        },
      ),
    )
    ..loadRequest(Uri.parse(widget.link));

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Scaffold(
      appBar: widget.title != null
          ? TemplateAppBar(title: Text(widget.title!))
          : null,
      backgroundColor: widget.backgroundColor ?? colors.background,
      body: Stack(
        children: [
          Center(
            child: WebViewWidget(
              key: UniqueKey(),
              controller: webViewController,
            ),
          ),
          if (isLoading) const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
