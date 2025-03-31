import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MaterialRemoteView extends StatelessWidget {
  const MaterialRemoteView({super.key, required this.favorite});

  final bool favorite;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final child = ListTile(
      contentPadding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 16,
      ),
      leading: const CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: const Text('Device name'),
      subtitle: const Text('user@host'),
      trailing: const Icon(Icons.chevron_right_rounded),
      onTap: () {},
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
                  color: colorScheme.primary,
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
                  backgroundColor: colorScheme.errorContainer,
                  foregroundColor: colorScheme.onErrorContainer,
                  icon: Icons.favorite_border_rounded,
                ),
              ]
            : [
                SlidableAction(
                  onPressed: (context) {},
                  backgroundColor: colorScheme.primaryContainer,
                  foregroundColor: colorScheme.onPrimaryContainer,
                  icon: Icons.favorite_rounded,
                ),
              ],
      ),
      child: draggable,
    );
  }
}
