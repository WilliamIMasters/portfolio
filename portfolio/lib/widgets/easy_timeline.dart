import 'package:flutter/material.dart';
import 'package:timeline_list/timeline_list.dart';

class EasyTimeline extends StatelessWidget {
  const EasyTimeline({super.key, required this.points});

  final List<TimelinePoint> points;

  @override
  Widget build(BuildContext context) {
    var emptyIcon = Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
    );
    var activeIcon = Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
      child: Icon(Icons.check, color: Colors.white, size: 12)
    );
    var theme = Theme.of(context);
    
    return Timeline(
      properties: TimelineProperties(markerGap: 32, iconSize: 16),
      children: points.map<Marker>((TimelinePoint point) {
        return Marker(
          icon: point.IsActive ? activeIcon : emptyIcon,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                point.Title,
                style: theme.textTheme.titleLarge,
              ),
              if(point.AdditionalLines != null && point.AdditionalLines!.isNotEmpty) Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: point.AdditionalLines!.map<Widget>((text) {return Text(text, style: theme.textTheme.labelMedium);}).toList(),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class TimelinePoint {
  final String Title;
  final List<String>? AdditionalLines;
  final bool IsActive;

  TimelinePoint({required this.Title, this.AdditionalLines, this.IsActive = false});
}