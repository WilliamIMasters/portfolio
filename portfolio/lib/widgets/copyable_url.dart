import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/util/clipboard_helper.dart';

class CopyableUrl extends StatelessWidget {
  final String url;
  final String? name;
  const CopyableUrl({super.key, required this.url, this.name});

  @override
  Widget build(BuildContext context) {
    
    var copyUrl = ClipboardHelper.copyUrl;

    return Tooltip(
      message: "Copy",
      child: InkWell(
        onTap: () => copyUrl(url, context),
        child: Text(
          name ?? url,
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
