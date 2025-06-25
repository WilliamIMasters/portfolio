import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
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
          Row(children: [
            PropertyInfoCard(icon: DevIcons.csharpPlain, title: "C#", small: true),
            PropertyInfoCard(icon: DevIcons.javascriptPlain, title: "JavaScript", small: true),
            PropertyInfoCard(icon: DevIcons.dartPlain, title: "Dart", small: true),

          ],),
          Row(children: [
            PropertyInfoCard(icon: DevIcons.oracleOriginal, title: "Oracle", small: true),
            PropertyInfoCard(icon: DevIcons.mysqlPlain, title: "MySql", small: true),

          ],),
          SizedBox(height: 16),

          Text("Frameworks:", style: theme.textTheme.headlineSmall),
          Row(children: [
            PropertyInfoCard(icon: DevIcons.dotnetPlain, title: ".NET Framework", small: true),
            PropertyInfoCard(icon: DevIcons.flutterPlain, title: "Flutter", small: true),
            PropertyInfoCard(icon: DevIcons.reactOriginal, title: "React", small: true),
            PropertyInfoCard(icon: DevIcons.nodejsPlain, title: "Node.js", small: true),
          ],),
          SizedBox(height: 16),

          Text("Tools:", style: theme.textTheme.headlineSmall),
          Row(children: [
            PropertyInfoCard(icon: DevIcons.githubOriginal, title: "Github", small: true),
            PropertyInfoCard(icon: DevIcons.firebasePlain, title: "Firebase", small: true),
            PropertyInfoCard(icon: DevIcons.godotPlain, title: "Godot", small: true),
            PropertyInfoCard(icon: SimpleIcons.pocketbase, title: "PocketBase", small: true),
          ],),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
