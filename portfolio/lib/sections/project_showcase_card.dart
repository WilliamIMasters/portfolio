import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/model/project.dart';
import 'package:portfolio/my_data.dart';
import 'package:portfolio/widgets/icon_url_button.dart';
import 'package:portfolio/widgets/section_card.dart';
import 'package:simple_icons/simple_icons.dart';
//import "package:simple_icons/simple_icons.dart";

class ProjectShowcaseCard extends StatelessWidget {
  const ProjectShowcaseCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: "Projects",
      icon: Icons.rocket,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: MyData.projects().indexed.map<Widget>((ip) {
          return ProjectShowcase(project: ip.$2, imageOnRight: ip.$1 % 2 == 1,);
        }).toList(),
      ),
    );
  }
}

class ProjectShowcase extends StatelessWidget {

  final Project project;
  final bool imageOnRight;

  const ProjectShowcase({super.key, required this.project, this.imageOnRight = false});

  IconData GetIcon(String toolKey) {
    switch(toolKey){
      case "Flutter": return DevIcons.flutterPlain;
      case "C#": return DevIcons.csharpPlain;
      case "MonoGame": return SimpleIcons.monogame;
      case "PocketBase": return SimpleIcons.pocketbase;
      case "Unity": return SimpleIcons.unity;
    }
    return Icons.question_mark;
  }

  String? GetUrl(String toolKey) {
    switch(toolKey){
      case "Flutter": return "https://flutter.dev";
      case "C#": return "https://dotnet.microsoft.com/en-us/languages/csharp";
      case "MonoGame": return "https://monogame.net";
      case "PocketBase": return "https://pocketbase.io/";
      case "Unity": return "https://unity.com/";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {

    var theme = Theme.of(context);

    return Card(
      surfaceTintColor: project.color,shadowColor: project.color,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!imageOnRight)
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              child: Image(
                width: 240,
                image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  //color: Colors.red,
                  width: 324,
                  height: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(project.title, style: theme.textTheme.headlineMedium,),
                      SizedBox(height: 8,),
                      Flexible(child: Text(project.description,)),
                    ],
                  ),
                ),
                Container(
                  width: 324,
                  child: Row(
                    mainAxisAlignment: imageOnRight ? MainAxisAlignment.end : MainAxisAlignment.start,
                    children: project.toolsUsed.map<Widget>((t) {
                      return IconUrlButton(icon: GetIcon(t), toolTip: t, url: GetUrl(t));
                    }).toList(),
                  ),
                ),
                
              ],
            ),
          ),
          if (imageOnRight)
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              child: Image(
                width: 240,
                image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                ),
              ),
            ),
        ],
      ),
    );
  }
}
