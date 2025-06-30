import 'package:flutter/material.dart';
import 'package:portfolio/my_data.dart';
import 'package:portfolio/widgets/clickable_url.dart';
import 'package:portfolio/widgets/copyable_url.dart';
import 'package:portfolio/widgets/section_card.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: "Contact Me",
      /*child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4,
        children: [
          Row(
            children: [Text("Email me at:  "), CopyableUrl(url: MyData.email)],
          ),
          Row(
            children: [
              Text("LinkedIn:  "),
              ClickableUrl(url: MyData.linkedInUrl),
            ],
          ),
          Row(
            children: [Text("Github:  "), ClickableUrl(url: MyData.githubUrl)],
          ),
          Text("Location: ${MyData.location}"),
        ],
      ),*/
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          _ContactItem(
            icon: Icons.email_outlined,
            label: "Email",
            child: CopyableUrl(
              url: MyData.email,
              displayText: MyData.email,
            ),
          ),
          const Divider(height: 24, thickness: 0.5),
          _ContactItem(
            icon: Icons.link,
            label: "LinkedIn",
            child: ClickableUrl(
              url: MyData.linkedInUrl,
              displayText: MyData.linkedInUrl,
            ),
          ),
          const Divider(height: 24, thickness: 0.5),
          _ContactItem(
            icon: Icons.code,
            label: "GitHub",
            child: ClickableUrl(
              url: MyData.githubUrl,
              displayText: MyData.githubUrl,
            ),
          ),
          const Divider(height: 24, thickness: 0.5),
          _ContactItem(
            icon: Icons.location_on_outlined,
            label: "Location",
            child: Text(
              MyData.location,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Widget child;

  const _ContactItem({
    required this.icon,
    required this.label,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, size: 24),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
              ),
            ),
            const SizedBox(height: 2),
            DefaultTextStyle(
              style:
                  Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ) ??
                  TextStyle(),
              child: child,
            ),
          ],
        ),
      ],
    );
  }
}
