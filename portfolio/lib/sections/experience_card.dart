import 'package:flutter/material.dart';
import 'package:portfolio/widgets/easy_timeline.dart';
import 'package:portfolio/widgets/section_card.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    var points = [
      TimelinePoint(Title: "Damarel Systems", SubTitle: "Software Developer", AdditionalLines: ["Sept 2022 - Present"],IsActive: true),
      TimelinePoint(Title: "The Redan", SubTitle: "Bar Supervisor", AdditionalLines: ["Sept 2021 - Sept 2022"]),
      TimelinePoint(Title: "University of Plymouth", SubTitle: "BSc - Computing and game development", AdditionalLines: ["2018-2022"]),
    ];
    return SectionCard(
      title: "Experience And Education",
      icon: Icons.work,
      child: Column(
        children: [
          EasyTimeline(points: points),
        ],
      ),
    );
  }
}
