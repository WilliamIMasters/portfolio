import 'dart:ui';

class Project {

  final String title;
  final String description;
  final Color color;
  final List<String> toolsUsed;
  final String? imagePath;

  Project(this.title, this.description, this.color, this.toolsUsed, {this.imagePath});

}