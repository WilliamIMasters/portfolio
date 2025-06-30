import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/util/technologies_helper.dart';
import 'package:portfolio/widgets/property_info_card.dart';
import 'package:portfolio/widgets/section_card.dart';
import 'package:simple_icons/simple_icons.dart';

class TechnicalSkillsCard extends StatelessWidget {
  const TechnicalSkillsCard({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SectionCard(
      title: "Technical Skill",
      icon: Icons.handyman,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Languages, Frameworks & Tools I commenly use to Build With."),
          SizedBox(height: 16),

          Text("Languages:", style: theme.textTheme.headlineSmall),
          TechnologyCardList(technologies: ["C#", "JavaScript", "Dart", "Oracle","MySql"]),
          SizedBox(height: 16),

          Text("Frameworks:", style: theme.textTheme.headlineSmall),
          TechnologyCardList(technologies: [".NET Framework", "Flutter", "React", "Node.js"]),
          SizedBox(height: 16),

          Text("Tools:", style: theme.textTheme.headlineSmall),
          TechnologyCardList(technologies: ["Github", "Firebase", "Godot", "PocketBase", "PostMan"]),
        ],
      ),
    );
  }
}

class TechnologyCardList extends StatelessWidget {

  final List<String> technologies;
  const TechnologyCardList({
    super.key,
    required this.technologies
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      
      children: technologies.map((t) => IntrinsicWidth(child: TechnologyCard(name: t))).toList()
    );
  }
}

class TechnologyCard extends StatelessWidget {

  final String name;

  const TechnologyCard({
    super.key,
    required this.name
  });

  @override
  Widget build(BuildContext context) {

    IconData getIcon() {
      return TechnologiesHelper.getIcon(name);
    }

    return PropertyInfoCard(
      icon: getIcon(),
      title: name,
      small: true,
    );
  }
}
