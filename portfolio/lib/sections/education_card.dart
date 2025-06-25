import 'package:flutter/material.dart';
import 'package:portfolio/widgets/easy_timeline.dart';
import 'package:portfolio/widgets/section_card.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: "Education",
      icon: Icons.school,
      child: EasyTimeline(
        points: [
          TimelinePoint(
            Title: "University of Plymouh",
            AdditionalLines: ["Computing and game development", "2018-2022"],
          ),
        ],
      ),
    );
  }
}
