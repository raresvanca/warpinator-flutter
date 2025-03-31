import 'package:end_padding/end_padding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warpinator/apps/routers/cupertino.dart';
import 'package:warpinator/widgets/cupertino/remote_view.dart';

class HomeScreenCupertino extends StatelessWidget {
  const HomeScreenCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    final remotes = [];
    final Widget content;

    if (remotes.isEmpty) {
      final theme = CupertinoTheme.of(context);
      content = SliverFillRemaining(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/states/no_devices.svg',
                  width: 300,
                  colorFilter: ColorFilter.mode(
                    theme.primaryColor,
                    BlendMode.modulate,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'No devices found',
                  style: theme.textTheme.navLargeTitleTextStyle.copyWith(
                    color: theme.primaryColor,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Make sure your devices are on the same network and use the same group code.',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.textStyle.copyWith(
                    color: CupertinoColors.systemGrey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
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
