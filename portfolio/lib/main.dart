import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/my_data.dart';
import 'package:portfolio/sections/about_me_card.dart';
import 'package:portfolio/sections/education_card.dart';
import 'package:portfolio/sections/experience_card.dart';
import 'package:portfolio/sections/my_profile_card.dart';
import 'package:portfolio/sections/project_showcase_card.dart';
import 'package:portfolio/widgets/clickable_url.dart';
import 'package:portfolio/widgets/copyable_url.dart';
import 'package:portfolio/widgets/easy_timeline.dart';
import 'package:portfolio/widgets/section_card.dart';
import 'package:portfolio/sections/technical_skills_card.dart';
import 'package:timeline_list/timeline_list.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      themeMode: ThemeMode.dark, 
      darkTheme: ThemeData(brightness: Brightness.dark),
      home:Portfolio(width),
    );
  }

  Scaffold Portfolio(double width) {
    return Scaffold(
      // floatingActionButton: IconButton(
      //   onPressed: tst,
      //   icon: Icon(Icons.plus_one),
      // ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blueGrey, Colors.grey, Colors.blueGrey],
          ),
          // gradient: RadialGradient(
          //   //focalRadius: 100000,
          //   focalRadius: 0.1,
          //   colors: [Colors.blueGrey, Colors.grey],
          // )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          //padding: const EdgeInsets.fromLTRB(128, 32, 128, 32),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(width > 1020) Padding(
                  padding: const EdgeInsets.fromLTRB(0, 32, 0, 32),
                  child: SizedBox(width: 360, child: MyProfileCard()),
                ),
                SizedBox(
                  width: 660,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 32,),
                      if(width <= 1020) MyProfileCard(alightLeft: true),
                      AboutMeCard(),
                      TechnicalSkillsCard(),
                      ProjectShowcaseCard(),
                      ExperienceCard(),
                      EducationCard(),
                      ContactMeCard(),
                      SizedBox(height: 32,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactMeCard extends StatelessWidget {
  const ContactMeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: "Contact Me",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4,
        children: [
          Row(children: [
            Text("Email me at:  "),
            CopyableUrl(url: MyData.email),
          ],),
          Row(children: [
            Text("LinkedIn:  "),
            ClickableUrl(url: MyData.linkedInUrl),
          ],),
          Row(children: [
            Text("Github:  "),
            ClickableUrl(url: MyData.githubUrl),
          ],),
          Text("Location: ${MyData.location}"),
          ],
      ),
    );
  }
}
