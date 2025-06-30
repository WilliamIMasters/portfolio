import 'package:flutter/material.dart';
import 'package:portfolio/my_data.dart';
import 'package:portfolio/sections/about_me_card.dart';
import 'package:portfolio/sections/contact_me_section.dart';
import 'package:portfolio/sections/experience_card.dart';
import 'package:portfolio/sections/my_profile_card.dart';
import 'package:portfolio/sections/project_showcase_section.dart';
import 'package:portfolio/widgets/clickable_url.dart';
import 'package:portfolio/widgets/copyable_url.dart';
import 'package:portfolio/widgets/section_card.dart';
import 'package:portfolio/sections/technical_skills_card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: Portfolio(context),
    );
  }

  Scaffold Portfolio(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var topKey = new GlobalKey();
    return Scaffold(
      floatingActionButton: ToTopOfPageButton(topKey: topKey),
      body: Container(
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Colors.blueGrey, Colors.grey, Colors.blueGrey],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 32, key: topKey,),
              MyProfileCard(),
              AboutMeCard(),
              TechnicalSkillsCard(),
              ProjectShowcaseSection(),
              ExperienceCard(),
              ContactMeSection(),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

class ToTopOfPageButton extends StatelessWidget {
  const ToTopOfPageButton({
    super.key,
    required this.topKey,
  });

  final GlobalKey<State<StatefulWidget>> topKey;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return CircleAvatar(
      backgroundColor: theme.cardColor,
      child: IconButton(
        onPressed: () => Scrollable.ensureVisible(topKey.currentContext!),
        icon: Icon(Icons.arrow_upward),
      ),
    );
  }
}
