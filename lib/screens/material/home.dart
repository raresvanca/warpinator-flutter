import 'package:end_padding/end_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:warpinator/apps/routers/material.dart';
import 'package:warpinator/widgets/common/sliver_no_devices_status.dart';
import 'package:warpinator/widgets/material/remote_view.dart';

enum _HomeMenuAction {
  settings,
  manualConnection,
  refresh,
  help,
  about,
}

class HomeScreenMaterial extends StatelessWidget {
  const HomeScreenMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final remotes = [1];
    final Widget content;

    if (remotes.isEmpty) {
      content = SliverNoDevicesStatus(
        imageColor: colorScheme.primary,
        titleTextStyle: textTheme.displaySmall!.copyWith(
          color: colorScheme.primary,
        ),
        subtitleTextStyle: textTheme.labelLarge!,
      );
    } else {
      // TODO: Use builder to create the list of remotes
      content = SlidableAutoCloseBehavior(
        child: SliverList.list(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Text(
                'Devices',
                style:
                    textTheme.labelLarge?.copyWith(color: colorScheme.primary),
              ),
            ),
            const MaterialRemoteView(favorite: true),
            const MaterialRemoteView(favorite: false),
          ],
        ),
      );
    }

    return Scaffold(
      body: RefreshIndicator(
        backgroundColor: colorScheme.primary,
        color: colorScheme.onPrimary,
        onRefresh: () async {},
        child: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title: const Text('Warpinator'),
              actions: [
                PopupMenuButton<_HomeMenuAction>(
                  onSelected: (value) {
                    switch (value) {
                      case _HomeMenuAction.settings:
                        const SettingsRoute().go(context);
                        break;
                      case _HomeMenuAction.manualConnection:
                      case _HomeMenuAction.refresh:
                      case _HomeMenuAction.help:
                        break;
                      case _HomeMenuAction.about:
                        const AboutRoute().go(context);
                        break;
                    }
                  },
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: _HomeMenuAction.settings,
                      child: Text('Settings'),
                    ),
                    const PopupMenuItem(
                      value: _HomeMenuAction.manualConnection,
                      child: Text('Manual connection'),
                    ),
                    const PopupMenuItem(
                      value: _HomeMenuAction.refresh,
                      child: Text('Refresh devices'),
                    ),
                    const PopupMenuItem(
                      value: _HomeMenuAction.help,
                      child: Text('Help'),
                    ),
                    const PopupMenuItem(
                      value: _HomeMenuAction.about,
                      child: Text('About'),
                    ),
                  ],
                ),
              ],
            ),
            content,
            const SliverEndPadding(),
          ],
        ),
      ),
    );
  }
}
