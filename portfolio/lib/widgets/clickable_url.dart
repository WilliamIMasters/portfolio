import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ClickableUrl extends StatelessWidget {
  final String url;
  final String? name;
  const ClickableUrl({super.key, required this.url, this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchUrlString(url),
      child: Text(
        name ?? url,
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}