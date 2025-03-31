import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;

import 'package:flutter_svg/flutter_svg.dart';

class AboutScreenCupertino extends StatelessWidget {
  const AboutScreenCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = CupertinoTheme.of(context);
    final displayTextStyle = theme.textTheme.navLargeTitleTextStyle;

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        previousPageTitle: 'Devices',
        middle: Text('About'),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DecoratedBox(
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
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Warpinator',
                    style: displayTextStyle,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Version 0.1.0',
                    style: theme.textTheme.textStyle.copyWith(
                      fontSize: 12,
                      color: CupertinoColors.systemGrey,
                    ),
                  ),
                  const SizedBox(height: 32),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        color: CupertinoColors.systemGrey,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text:
                              'This is an unofficial port of Warpinator. Powered by ',
                        ),
                        WidgetSpan(
                          child: material.Tooltip(
                            message: 'Flutter',
                            child: FlutterLogo(size: 16),
                          ),
                        ),
                        TextSpan(
                          text: '\n'
                              'Send and receive files over the local network.',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 64),
                  const Text(
                    '''
Built by 2.5 Perceivers
              
This program is licensed under the GNU General Public License v3.0, and open sourced on GitHub.
              
This program comes with ABSOLUTELY NO WARRANTY. See the terms of the license for more details.
              ''',
                    style: TextStyle(
                      fontSize: 14,
                      color: CupertinoColors.systemGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      CupertinoButton(
                        onPressed: () {
                          // TODO: Open GitHub link
                        },
                        child: const Text('Source Code'),
                      ),
                      CupertinoButton(
                        onPressed: () {
                          // TODO: Open License link
                        },
                        child: const Text('License'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
