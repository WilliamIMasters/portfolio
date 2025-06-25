import 'package:flutter/material.dart';
import 'package:portfolio/widgets/easy_timeline.dart';
import 'package:portfolio/widgets/section_card.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    var emptyIcon = Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
    );
    var points = [
      TimelinePoint(Title: "Damarel Systems - Software Developer", AdditionalLines: ["Sept 2022 - Present"],IsActive: true),
      TimelinePoint(Title: "The Redan - Bar Supervisor", AdditionalLines: ["Sept 2021 - Sept 2022"]),
    ];
    return SectionCard(
      title: "Experience",
      icon: Icons.work,
      child: Column(
        children: [
          EasyTimeline(points: points),
        ],
      ),
    );
  }
}
