import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:warpinator/apps/routers/cupertino.dart';
import 'package:warpinator/widgets/common/about_content.dart';

class AboutScreenCupertino extends StatelessWidget {
  const AboutScreenCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = CupertinoTheme.of(context);
    final displayTextStyle = theme.textTheme.navLargeTitleTextStyle;
    final versionTextStyle = theme.textTheme.textStyle.copyWith(
      fontSize: 12,
      color: CupertinoColors.systemGrey,
    );
    final bodyTextStyle = const TextStyle(
      color: CupertinoColors.systemGrey,
      fontSize: 14,
    );

    final appIcon = DecoratedBox(
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(16),
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
      CupertinoButton(
        onPressed: () {
          // TODO: Open GitHub link
        },
        child: const Text('Source Code'),
      ),
      CupertinoButton(
        onPressed: () {
          const LicensesRoute().go(context);
        },
        child: const Text('See licenses'),
      ),
    ];

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        previousPageTitle: 'Devices',
        middle: Text('About'),
      ),
      child: AboutContent(
        appIcon: appIcon,
        titleTextStyle: displayTextStyle,
        versionTextStyle: versionTextStyle,
        bodyTextStyle: bodyTextStyle,
        buttons: buttons,
      ),
    );
  }
}
