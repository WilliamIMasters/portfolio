import 'package:flutter/material.dart';

class PropertyInfoCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String? body;
  final bool small;
  final bool hideTitle;
  final String? toolTip;
  final Function? clickFunc;


  const PropertyInfoCard({
    super.key,
    required this.icon,
    required this.title,
    this.body,
    this.small = false,
    this.hideTitle = false,
    this.clickFunc,
    this.toolTip,
  });

  @override
  State<PropertyInfoCard> createState() => _PropertyInfoCardState();
}

class _PropertyInfoCardState extends State<PropertyInfoCard> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      onTap: () => widget.clickFunc == null ? {} : widget.clickFunc!(),
      borderRadius: BorderRadius.circular(16),

      child:
          widget.toolTip == null
              ? MainBody(theme)
              : Tooltip(message: widget.toolTip, child: MainBody(theme)),
    );
  }

  Card MainBody(ThemeData theme) {
    return Card(
        //surfaceTintColor: isHovering ? Colors.blue : null,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(widget.icon, size: widget.small ? 20 : 32),
              if (!widget.hideTitle) SizedBox(width: 12),
              if (!widget.hideTitle) Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title, style: theme.textTheme.titleMedium),
                  if (widget.body?.isNotEmpty ?? false)
                    Text(widget.body!, style: theme.textTheme.labelLarge),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
