import 'package:flutter/material.dart';
import 'package:warpinator/utils/constants.dart' as constants;

class AboutContent extends StatelessWidget {
  const AboutContent({
    super.key,
    required this.appIcon,
    required this.titleTextStyle,
    required this.versionTextStyle,
    required this.bodyTextStyle,
    required this.buttons,
  });

  final Widget appIcon;
  final TextStyle titleTextStyle, versionTextStyle, bodyTextStyle;
  final List<Widget> buttons;

  @override
  Widget build(BuildContext context) {
    return Center(
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
                appIcon,
                const SizedBox(height: 24),
                Text(
                  'Warpinator',
                  style: titleTextStyle,
                ),
                const SizedBox(height: 16),
                Text(
                  'Version ${constants.appVersion}',
                  style: versionTextStyle,
                ),
                const SizedBox(height: 32),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: bodyTextStyle,
                    children: [
                      const TextSpan(
                        text:
                            'This is an unofficial port of Warpinator. Powered by ',
                      ),
                      const TextSpan(
                        text: 'Flutter',
                        style: TextStyle(
                          height: 0,
                          fontSize: 0,
                          color: Colors.transparent,
                        ),
                        semanticsLabel: 'Flutter',
                      ),
                      const WidgetSpan(
                        child: Tooltip(
                          triggerMode: TooltipTriggerMode.tap,
                          excludeFromSemantics: true,
                          message: 'Flutter',
                          child: FlutterLogo(size: 16),
                        ),
                      ),
                      const TextSpan(
                        text: '\n'
                            'Send and receive files over the local network.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 64),
                Text(
                  '''
    Built by 2.5 Perceivers
            
    This program is licensed under the GNU General Public License v3.0, and open sourced on GitHub.
            
    This program comes with ABSOLUTELY NO WARRANTY. See the terms of the license for more details.
            ''',
                  style: bodyTextStyle,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: 8,
                  spacing: 8,
                  children: buttons,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
