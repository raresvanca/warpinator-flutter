import 'package:end_padding/end_padding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:warpinator/widgets/common/sliver_no_transfers_status.dart';
import 'package:warpinator/widgets/cupertino/toolbar.dart';
import 'package:warpinator/widgets/cupertino/transfer_view.dart';

class RemoteScreenCupertino extends StatelessWidget {
  const RemoteScreenCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = CupertinoTheme.of(context);

    final transfers = [1];

    final Widget content;

    if (transfers.isEmpty) {
      content = SliverNoTransfersStatus(
        imageColor: theme.primaryColor,
        titleTextStyle: theme.textTheme.navLargeTitleTextStyle,
      );
    } else {
      content = SliverToBoxAdapter(
        child: CupertinoListSection.insetGrouped(
          header: const Text('Transfers'),
          children: [
            const CupertinoTransferView(),
            const CupertinoTransferView(),
          ],
        ),
      );
    }
    return SlidableAutoCloseBehavior(
      child: CupertinoPageScaffold(
        backgroundColor:
            CupertinoColors.systemGroupedBackground.resolveFrom(context),
        child: Stack(
          children: [
            Positioned.fill(
              child: CustomScrollView(
                slivers: [
                  const CupertinoSliverNavigationBar(
                    largeTitle: Text('Device name'),
                    bottom: _RemoteAppBarBottom(),
                  ),
                  content,
                  if (transfers.isNotEmpty)
                    const SliverEndPadding(
                      otherPadding: CupertinoToolbar.kTabBarHeight,
                    ),
                ],
              ),
            ),
            toolbarBuilder(context),
          ],
        ),
      ),
    );
  }

  Positioned toolbarBuilder(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: CupertinoToolbar(
        children: [
          const SizedBox(),
          Center(
            child: Text(
              '2 transfers',
              style: TextStyle(
                fontSize: 15.0,
                letterSpacing: -0.23,
                color: CupertinoColors.secondaryLabel.resolveFrom(context),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CupertinoButton(
              padding: const EdgeInsets.all(8),
              onPressed: () {},
              child: const Icon(
                CupertinoIcons.arrow_up_doc_fill,
                size: 24,
              ),
            ),
          ),
        ].map((e) {
          return Expanded(
            child: e,
          );
        }).toList(growable: false),
      ),
    );
  }
}

// A preferred size widget that display remote connection status, host name and ip
class _RemoteAppBarBottom extends StatelessWidget
    implements PreferredSizeWidget {
  const _RemoteAppBarBottom();

  static const double _kDetailHeight = 64;
  static const double _kDetailPaddedHeight = _kDetailHeight + 8 * 2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: OverflowBox(
          maxHeight: _kDetailHeight,
          minHeight: _kDetailHeight,
          alignment: Alignment.bottomCenter,
          child: CupertinoListTile.notched(
            trailing: const Icon(
              CupertinoIcons.arrow_up_arrow_down,
              size: 18,
            ),
            backgroundColor:
                CupertinoTheme.of(context).primaryColor.withAlpha(40),
            title: const Text(
              'user@host',
              overflow: TextOverflow.fade,
            ),
            subtitle: const Text(
              '192.168.0.100',
              overflow: TextOverflow.fade,
            ),
            additionalInfo: const Text('Connected'),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_kDetailPaddedHeight);
}
