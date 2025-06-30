import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ClipboardHelper {

  static Future<void> copyUrl(String text, BuildContext context) async {
      try {
        await Clipboard.setData(ClipboardData(text: text));

        // Show success feedback
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Center(child: Text('Copied to clipboard')),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              dismissDirection: DismissDirection.horizontal,
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height - 128,
                right: 20,
                left: MediaQuery.of(context).size.width - 200,
              ),
              duration: Duration(seconds: 1),
            ),
          );
        }
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Failed to copy: $e'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    }
}

