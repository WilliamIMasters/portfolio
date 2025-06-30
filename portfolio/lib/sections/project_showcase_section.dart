import 'package:flutter/material.dart';
import 'package:portfolio/my_data.dart';
import 'package:portfolio/widgets/project_showcase_card.dart';
import 'package:portfolio/widgets/section_card.dart';

class ProjectShowcaseSection extends StatelessWidget {
  const ProjectShowcaseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: "Projects",
      icon: Icons.rocket,
      bodyAlignment: CrossAxisAlignment.center,
      child: Column(
        spacing: 8,
        children:
            MyData.projects().indexed.map<Widget>((ip) {
              return ProjectShowcaseCard(
                project: ip.$2,
                imageOnRight: ip.$1 % 2 == 1,
              );
            }).toList(),
      ),
    );
  }
}
