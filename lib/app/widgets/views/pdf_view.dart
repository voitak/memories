import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:memories/app/theme/app_theme_extensions.dart';
import 'package:memories/app/widgets/app_bar/template_app_bar.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

class PdfView extends StatelessWidget {
  const PdfView({
    required this.link,
    required this.title,
    super.key,
  });

  final String link;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: TemplateAppBar(title: Text(title)),
      backgroundColor: context.colors.background,
      body: FutureBuilder<File>(
        future: DefaultCacheManager().getSingleFile(link),
        builder: (context, snapshot) => snapshot.hasData
            ? Container(
                color: context.colors.background,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: PdfViewer.openFile(snapshot.data!.path),
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
