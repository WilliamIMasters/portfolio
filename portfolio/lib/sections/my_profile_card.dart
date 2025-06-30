import 'package:flutter/material.dart';
import 'package:portfolio/my_data.dart';
import 'package:portfolio/util/clipboard_helper.dart';
import 'package:portfolio/widgets/icon_url_button.dart';
import 'package:portfolio/widgets/property_info_card.dart';
import 'package:portfolio/widgets/section_card.dart';
import 'package:social_media_buttons/social_media_icons.dart';

class MyProfileCard extends StatelessWidget {

  const MyProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    
    var alightLeft = (width > 660) ? true : false;
    
    Column getContactDetails(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PropertyInfoCard(
                icon: Icons.mail,
                title: "Email",
                body: MyData.email,
                toolTip: "Copy",
                clickFunc: () => ClipboardHelper.copyUrl(MyData.email, context),

              ),
              PropertyInfoCard(
                icon: Icons.phone_android,
                title: "Phone Number",
                body: MyData.phoneNumber,
                toolTip: "Copy",
                clickFunc: () => ClipboardHelper.copyUrl(MyData.phoneNumber, context),
              ),
            ],
          );
  }

  Column getNameBadges() {
    return Column(
            crossAxisAlignment:
                alightLeft
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
            children: [
              Text(MyData.name, style: TextStyle(fontSize: 36)),
              SizedBox(height: 8),

              Row(
                mainAxisAlignment:
                    alightLeft
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.center,
                children: [
                  Badge(
                    label: Text("Software Developer", style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.blueAccent,
                  ),
                  SizedBox(width: 8),
                  Badge(
                    label: Text("Full-Stack Developer", style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
            ],
          );
  }

  ClipRRect ProfilePic() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: Image.asset("assets/ProfilePic.jpg", width: 240,) ,
      
    );
  }


    return SectionCard(
      child: Container(
        child: Column(
          crossAxisAlignment:
              alightLeft ? CrossAxisAlignment.start : CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfilePic(),
                if (alightLeft) SizedBox(width: 32),
                if (alightLeft)
                  Column(
                    children: [
                      getNameBadges(),
                      SizedBox(height: 16,),
                      Container(
                        width: 316,
                        child: getContactDetails(context),
                      ),
                      
                    ],
                  ),
              ],
            ),
            SizedBox(height: 16),

            if(!alightLeft) getNameBadges(),
            if(!alightLeft) SizedBox(height: 8),

            if (!alightLeft) Divider(),
            SizedBox(height: 16),

            if(!alightLeft) getContactDetails(context),
            if(!alightLeft) SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconUrlButton(
                  icon: SocialMediaIcons.linkedin,
                  url: MyData.linkedInUrl,
                  toolTip: "LinkedIn",
                ),
                IconUrlButton(
                  icon: SocialMediaIcons.github_circled,
                  url: MyData.githubUrl,
                  toolTip: "Github",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  
}
