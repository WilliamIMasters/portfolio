import 'package:flutter/material.dart';
import 'package:portfolio/model/project.dart';

class MyData {
  static String name = "William Masters";
  static String bio = "Software Developer specializing in C#, Javascript and Flutter, with experience building scalable applications and interactive game prototypes (Unity/Godot). Passionate about clean architecture, performance optimization, and creating intuitive user experiences—whether for the web, mobile, or gaming.";
  static String location = "Based in Reading, UK";
  
  static String email = "williamianm@hotmail.com";
  static String phoneNumber = "07592812651";

  static String linkedInUrl =
      "https://www.linkedin.com/in/william-masters-7b458b19b/";
  static String githubUrl = "https://github.com/WilliamIMasters";

  static List<Project> projects() => [
    Project("MixMasters", "A cocktail spec app.", Colors.red, ["Flutter", "PocketBase"]),
    Project("Chess2", "A rouglike chessgame made with flutter.", Colors.blue, ["Flutter"]),
    Project("Terraria2", "A simple recreation of terraria using MonoGame.", Colors.green, ["MonoGame", "C#"]),
    Project("OctoPush", "A top down 2d pixel art game based on the sport underwater hocket, otherwise called 'OctoPush'", Colors.deepPurple, ["C#", "Unity"]),
  ];
}

