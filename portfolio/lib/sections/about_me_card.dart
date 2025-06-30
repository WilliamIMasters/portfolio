import 'package:flutter/material.dart';
import 'package:portfolio/my_data.dart';
import 'package:portfolio/widgets/section_card.dart';

class AboutMeCard extends StatelessWidget {
  const AboutMeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
        title: "About Me",
        icon: Icons.person,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(MyData.bio),
          ],
        ),
      
    );
  }
}
