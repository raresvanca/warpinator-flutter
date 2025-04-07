import 'package:end_padding/end_padding.dart';
import 'package:expand/expand.dart';
import 'package:flutter/material.dart';
import 'package:warpinator/widgets/common/sliver_no_transfers_status.dart';
import 'package:warpinator/widgets/material/remote_app_bar.dart';
import 'package:warpinator/widgets/material/transfer_view.dart';

class RemoteScreenMaterial extends StatefulWidget {
  const RemoteScreenMaterial({super.key});

  @override
  State<RemoteScreenMaterial> createState() => _RemoteScreenMaterialState();
}

class _RemoteScreenMaterialState extends State<RemoteScreenMaterial> {
  final ScrollController _scrollController = ScrollController();

  // Use ValueNotifier to manage the state so only the FAB rebuilds
  ValueNotifier<bool> isExtended = ValueNotifier(true);

  @override
  void initState() {
    super.initState();
    // Listen to the scroll position and update the isExtended value
    _scrollController.addListener(
      () {
        if (_scrollController.position.pixels >= 10) {
          setState(() {
            isExtended.value = false;
          });
        } else {
          setState(() {
            isExtended.value = true;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final transfers = [1];

    final Widget content;

    if (transfers.isEmpty) {
      content = SliverNoTransfersStatus(
        imageColor: colorScheme.primary,
        titleTextStyle: textTheme.titleLarge!,
      );
    } else {
      content = SliverList.list(
        children: [
          const MaterialTransferView(),
          const MaterialTransferView(),
        ],
      );
    }

    return Scaffold(
      floatingActionButton: _RemoteScreenFAB(isExtended: isExtended),
      body: ExpandableProvider(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            const RemoteAppBar(),
            _connectionStatusCardBuilder(colorScheme, transfers.length),
            content,
            if (transfers.isNotEmpty)
              const SliverEndPadding(
                useFloating: true,
              ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _connectionStatusCardBuilder(
    ColorScheme colorScheme,
    int transfersCount,
  ) {
    return SliverToBoxAdapter(
      child: Card(
        color: colorScheme.secondaryContainer,
        margin: const EdgeInsets.all(16),
        child: ListTile(
          leading: const Icon(Icons.sync_alt_rounded),
          textColor: colorScheme.onSurface,
          contentPadding: const EdgeInsets.all(16),
          title: const Text('Connected'),
          subtitle: Text(
            '$transfersCount transfers in progress',
          ),
        ),
      ),
    );
  }
}

// A simple animated FAB that extends and shrinks based a listenable value
class _RemoteScreenFAB extends StatelessWidget {
  const _RemoteScreenFAB({
    required this.isExtended,
  });

  final ValueNotifier<bool> isExtended;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isExtended,
      child: const Icon(Icons.file_upload_rounded),
      builder: (BuildContext context, bool value, Widget? icon) {
        return FloatingActionButton.extended(
          onPressed: () {},
          icon: icon,
          label: AnimatedSize(
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeInOutCubic,
            child: value ? const Text('Send') : const SizedBox(),
          ),
          extendedIconLabelSpacing: value ? 10 : 0,
          extendedPadding: value ? null : const EdgeInsets.all(16),
        );
      },
    );
  }
}
