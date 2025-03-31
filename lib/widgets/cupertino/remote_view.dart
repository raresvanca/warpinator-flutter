import 'package:flutter/cupertino.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CupertinoRemoteView extends StatelessWidget {
  const CupertinoRemoteView({super.key, required this.favorite});

  final bool favorite;

  @override
  Widget build(BuildContext context) {
    final child = CupertinoListTile.notched(
      leading: const Icon(CupertinoIcons.person),
      title: const Text('Device name'),
      subtitle: const Text('user@host'),
      trailing: const CupertinoListTileChevron(),
      onTap: () {},
      // Use the additionalInfo property to show status when not connected
      // and the IP address when connected
      additionalInfo: const Text(
        '192.168.0.100',
        style: TextStyle(fontSize: 12),
      ),
    );

    Widget draggable;

    if (favorite) {
      draggable = Stack(
        children: [
          child,
          Positioned(
            left: 6,
            top: 0,
            bottom: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: CupertinoTheme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 4,
                height: 24,
              ),
            ),
          ),
        ],
      );
    } else {
      draggable = child;
    }

    return Slidable(
      direction: Axis.horizontal,
      groupTag: 'remote',
      endActionPane: ActionPane(
        extentRatio: 0.25,
        motion: const DrawerMotion(),
        children: favorite
            ? [
                SlidableAction(
                  onPressed: (context) {},
                  backgroundColor: CupertinoColors.destructiveRed,
                  foregroundColor: CupertinoColors.white,
                  icon: CupertinoIcons.star_fill,
                ),
              ]
            : [
                SlidableAction(
                  onPressed: (context) {},
                  backgroundColor: CupertinoColors.systemGreen,
                  foregroundColor: CupertinoColors.white,
                  icon: CupertinoIcons.star,
                ),
              ],
      ),
      child: draggable,
    );
  }
}
