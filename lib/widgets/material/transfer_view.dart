import 'package:expand/expand.dart';
import 'package:flutter/material.dart';

class MaterialTransferView extends StatelessWidget {
  const MaterialTransferView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpandableCard(
      advancedChildBuilder: listTileBuilder,
      detailsBuilder: detailsBuilder,
    );
  }

  Widget detailsBuilder(context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
      child: Column(
        children: [
          // Content examples until function implementation
          const ListTile(
            title: Text('Incoming transfer'),
            subtitle: Text('32.2KB/61.1KB  (1.2 KB/s)'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LinearProgressIndicator(
              value: 0.5,
              minHeight: 8,
              borderRadius: BorderRadius.circular(4),
              backgroundColor: colorScheme.primaryContainer,
              color: colorScheme.primary,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.check_rounded),
                  label: const Text('Accept'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: colorScheme.error,
                    foregroundColor: colorScheme.onError,
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.close_rounded),
                  label: const Text('Decline'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget listTileBuilder(context, _, onTap, animation, expanded) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final tile = ListTile(
      onTap: expanded ? null : onTap,
      title: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Flexible(
            child: Text(
              'my_file.file',
              softWrap: false,
              overflow: TextOverflow.fade,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '(1.2 KB)',
            style: theme.textTheme.labelMedium!.copyWith(
              color: colorScheme.tertiary,
            ),
            overflow: TextOverflow.visible,
            softWrap: false,
          ),
        ],
      ),
      subtitle: const Text(
        'Waiting for confirmation...',
        softWrap: false,
        overflow: TextOverflow.ellipsis,
      ),
      leading: const Tooltip(
        triggerMode: TooltipTriggerMode.tap,
        message: 'Incoming transfer',
        child: Icon(Icons.download_rounded),
      ),
      trailing: Opacity(
        opacity: 1.0 - (animation?.value ?? 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              tooltip: 'Accept',
              onPressed: () {},
              icon: Icon(
                Icons.check_rounded,
                color: colorScheme.primary,
              ),
            ),
            IconButton(
              tooltip: 'Decline',
              onPressed: () {},
              icon: Icon(
                Icons.close_rounded,
                color: colorScheme.error,
              ),
            ),
          ],
        ),
      ),
    );

    if (expanded) {
      return IgnorePointer(
        child: tile,
      );
    } else {
      return tile;
    }
  }
}
