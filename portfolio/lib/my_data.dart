import 'package:flutter/material.dart';
import 'package:portfolio/model/project.dart';

class MyData {
  static String name = "William Masters";
  static String bio =
      "Software Developer specializing in C#, Javascript and Flutter, with experience building scalable applications and interactive game prototypes (Unity/Godot). Passionate about clean architecture, performance optimization, and creating intuitive user experiences—whether for the web, mobile, or gaming.";
  static String location = "Based in Reading, UK";

  static String email = "williamianm@hotmail.com";
  static String phoneNumber = "07592812651";

  static String linkedInUrl =
      "https://www.linkedin.com/in/william-masters-7b458b19b/";
  static String githubUrl = "https://github.com/WilliamIMasters";

  static List<Project> projects() => [
    Project(
      "MixMasters",
      "Mix Masters is a mobile app designed to help bartenders and cocktail enthusiasts store, discover, and perfect drink recipes. Built with Flutter for seamless cross-platform performance and powered by PocketBase for an efficient all-in-one backend.",
      Colors.red,
      ["Flutter", "PocketBase"],
      imagePath: "assets/MixMastersDemo.png"
    ),
    Project(
      "Chess - Recreation",
      "A simple chess game built with Flutter and Dart, featuring a custom engine with all standard rules, AI opponent (negamax algorithm), responsive drag-and-drop interface, and multi-platform support.",
      Colors.blue,
      ["Flutter", "Dart"],
      imagePath: "assets/ChessDemo.jpg"
    ),
    Project(
      "Terraria2",
      "A no-engine recreation of Terraria's core gameplay, built with MonoGame. Features procedural world generation, tile-based physics, and custom entity systems.",
      Colors.green,
      ["C#","MonoGame"],
      imagePath: "assets/BerrariaDemo.png"
    ),
    Project(
      "OctoPush",
      "A top down 2d pixel art game based on the sport underwater hocket, otherwise called 'OctoPush'. I made this game for my final year project at university.",
      Colors.deepPurple,
      ["C#", "Unity"],
      imagePath: "assets/OctoPushDemo.png"
    ),
  ];
}
