import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({super.key, required this.child, this.title, this.icon, this.bodyAlignment});

  final Widget child;
  final String? title;
  final IconData? icon;
  final CrossAxisAlignment? bodyAlignment;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      //width: 660,
      constraints: BoxConstraints(maxWidth: 660),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: bodyAlignment ?? CrossAxisAlignment.start,
            children: [
              if ((title?.isNotEmpty ?? false) || (icon != null))
                Column(
                  crossAxisAlignment: bodyAlignment ?? CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        if (icon != null) Icon(icon!),
                        if (icon != null) SizedBox(width: 16),
                        if (title?.isNotEmpty ?? false)
                          Text(title!, style: theme.textTheme.headlineMedium),
                      ],
                    ),
                    SizedBox(height: 8),
      
                    Divider(),
                    SizedBox(height: 8),
                  ],
                ),
      
              child,
            ],
          ),
        ),
      ),
    );
  }
}
