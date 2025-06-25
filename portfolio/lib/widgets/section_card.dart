import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({super.key, required this.child, this.title, this.icon});

  final Widget child;
  final String? title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {

    var theme = Theme.of(context);

    return Card(child: Padding(padding: EdgeInsets.all(32), child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if ((title?.isNotEmpty ?? false) || (icon != null))
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      if(icon !=null) Icon(icon!),
                      if(icon !=null) SizedBox(width: 16,),
                      if ( title?.isNotEmpty ?? false)Text(title!, style: theme.textTheme.headlineMedium),
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
    );
  }
}
