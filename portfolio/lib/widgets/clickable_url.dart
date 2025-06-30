import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ClickableUrl extends StatelessWidget {
  final String url;
  final String? displayText;
  const ClickableUrl({super.key, required this.url, this.displayText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchUrlString(url),
      child: Text(
        displayText ?? url,
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}