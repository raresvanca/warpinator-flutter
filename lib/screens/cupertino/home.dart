import 'package:end_padding/end_padding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:warpinator/apps/routers/cupertino.dart';
import 'package:warpinator/widgets/common/sliver_no_devices_status.dart';
import 'package:warpinator/widgets/cupertino/remote_view.dart';

class HomeScreenCupertino extends StatelessWidget {
  const HomeScreenCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    final remotes = [1];
    final Widget content;

    if (remotes.isEmpty) {
      final theme = CupertinoTheme.of(context);
      content = SliverNoDevicesStatus(
        titleTextStyle: theme.textTheme.navLargeTitleTextStyle.copyWith(
          color: theme.primaryColor,
        ),
        subtitleTextStyle: theme.textTheme.textStyle.copyWith(
          color: CupertinoColors.systemGrey,
          fontSize: 14,
        ),
        imageColor: theme.primaryColor,
      );
    } else {
      content = SliverToBoxAdapter(
        child: CupertinoListSection.insetGrouped(
          children: [
            const CupertinoRemoteView(favorite: true),
            const CupertinoRemoteView(favorite: false),
          ],
        ),
      );
    }

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: SlidableAutoCloseBehavior(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverRefreshControl(
              onRefresh: () async {},
            ),
            CupertinoSliverNavigationBar(
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
            content,
            const SliverEndPadding(),
          ],
        ),
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
