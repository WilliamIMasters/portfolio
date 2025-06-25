import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IconUrlButton extends StatelessWidget {

  final IconData icon;
  final String? url;
  final String toolTip;

  const IconUrlButton({super.key, required this.icon, required this.toolTip, required this.url});

  @override
  Widget build(BuildContext context) {

    Future<void> _launchUrl() async {
      if(url == null) return;
      Uri uri = Uri.parse(url!);

      if (!await launchUrl(uri)) {
        throw Exception('Could not launch $uri');
      }
    }

    return Tooltip(
      message: toolTip,
      child: IconButton(
        onPressed: _launchUrl,
        icon: Icon(icon),
      ),
    );
  }
}
