import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warpinator/apps/routers/material.dart';
import 'package:warpinator/widgets/common/about_content.dart';

class AboutScreenMaterial extends StatelessWidget {
  const AboutScreenMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final appIcon = DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SvgPicture.asset(
          'assets/icon/warpinator.svg',
          width: 90,
          height: 90,
        ),
      ),
    );

    final buttons = [
      FilledButton.tonal(
        onPressed: () {
          // TODO: Open GitHub link
        },
        child: const Text('Source Code'),
      ),
      FilledButton.tonal(
        onPressed: () {
          const LicensesRoute().go(context);
        },
        child: const Text('See licenses'),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: AboutContent(
        appIcon: appIcon,
        titleTextStyle: textTheme.displaySmall!,
        versionTextStyle: textTheme.labelLarge!,
        bodyTextStyle: textTheme.bodyMedium!,
        buttons: buttons,
      ),
    );
  }
}
