import 'package:flutter/cupertino.dart';
import 'package:warpinator/apps/routers/cupertino.dart';

class HomeScreenCupertino extends StatelessWidget {
  const HomeScreenCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: CustomScrollView(
        slivers: [
          CupertinoSliverRefreshControl(
            onRefresh: () async {},
          ),
          CupertinoSliverNavigationBar(
            backgroundColor: CupertinoColors.black.withAlpha(50),
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: moreActionsSheetBuilder,
                );
              },
              child: const Icon(CupertinoIcons.ellipsis_circle),
            ),
            largeTitle: const Text('Devices'),
            middle: const Text('Warpinator'),
          ),
          SliverToBoxAdapter(
            child: CupertinoListSection.insetGrouped(
              children: [
                CupertinoListTile.notched(
                  leading: const Icon(CupertinoIcons.person),
                  title: const Text('Device name'),
                  subtitle: const Text('user@host'),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () {},
                  additionalInfo: const Text(
                    '192.168.0.100',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                CupertinoListTile.notched(
                  leading: const Icon(CupertinoIcons.person),
                  title: const Text('Device name'),
                  subtitle: const Text('user@host'),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () {},
                  additionalInfo: const Text(
                    'Connecting',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          const SliverPadding(padding: EdgeInsets.only(bottom: 1000)),
        ],
      ),
    );
  }

  Widget moreActionsSheetBuilder(context) {
    return CupertinoActionSheet(
      actions: [
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
            const SettingsRoute().go(context);
          },
          child: const Text('Settings'),
        ),
        CupertinoActionSheetAction(
          onPressed: () {},
          child: const Text('Manual connection'),
        ),
        CupertinoActionSheetAction(
          onPressed: () {},
          child: const Text('Refresh devices'),
        ),
        CupertinoActionSheetAction(
          onPressed: () {},
          child: const Text('Help'),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
            const AboutRoute().go(context);
          },
          child: const Text('About'),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Cancel'),
      ),
    );
  }
}
