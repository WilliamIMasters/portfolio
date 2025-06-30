import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/model/project.dart';
import 'package:portfolio/util/technologies_helper.dart';
import 'package:portfolio/widgets/icon_url_button.dart';
import 'package:simple_icons/simple_icons.dart';

class ProjectShowcaseCard extends StatelessWidget {
  final Project project;
  final bool imageOnRight;

  const ProjectShowcaseCard({
    super.key,
    required this.project,
    this.imageOnRight = false,
  });

  IconData GetIcon(String toolKey) {
    return TechnologiesHelper.getIcon(toolKey);
  }

  String? GetUrl(String toolKey) {
    return TechnologiesHelper.getUrl(toolKey);
  }

  @override
  Widget build(BuildContext context) {
    Widget getImage() {
      return project.imagePath != null
          ? Image.asset(
            project.imagePath!,
            width: 240,
            height: 240,
            fit: BoxFit.cover,
          )
          : PlaceholderImage();
    }

    var width = MediaQuery.of(context).size.width;
    var theme = Theme.of(context);
    var isCompact = width< 660;
    return Card(
      surfaceTintColor: project.color,
      shadowColor: project.color,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          if (!imageOnRight || isCompact)
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              child: getImage(),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 324),
                  //color: Colors.red,
                  //width: 324,
                  height: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        project.title,
                        style: theme.textTheme.headlineMedium,
                      ),
                      SizedBox(height: 8),
                      Flexible(child: Text(project.description)),
                    ],
                  ),
                ),
                Container(
                  //color: Colors.blue,
                  constraints: BoxConstraints(maxWidth: 324),
                  child: Row(
                    mainAxisAlignment:
                        imageOnRight
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                    children:
                        project.toolsUsed.map<Widget>((t) {
                          return IconUrlButton(
                            icon: GetIcon(t),
                            toolTip: t,
                            url: GetUrl(t),
                          );
                        }).toList(),
                  ),
                ),
              ],
            ),
          ),
          if (imageOnRight && !isCompact)
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              child: getImage(),
            ),
        ],
      ),
    );
  }

  Image PlaceholderImage() {
    return Image(
      width: 240,
      height: 240,
      image: NetworkImage(
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
      ),
    );
  }
}
