import 'package:flutter/material.dart';

class RemoteAppBar extends StatelessWidget {
  const RemoteAppBar({
    super.key,
  });

  // final Remote remote;

  @override
  Widget build(final BuildContext context) {
    return SliverAppBar(
      actions: [
        IconButton(
          tooltip: 'Clear completed transfers',
          onPressed: () {},
          icon: const Icon(Icons.clear_all_rounded),
        ),
        IconButton(
          tooltip: 'Add to favorites',
          onPressed: () {},
          icon: const Icon(Icons.star_outline_rounded),
        ),
      ],
      automaticallyImplyLeading: true,
      collapsedHeight: collapsedHeight,
      expandedHeight: expandedHeight,
      toolbarHeight: collapsedHeight,
      flexibleSpace: const _RemoteAppBarFlexible(
          // remote: remote,
          ),
      floating: false,
      pinned: true,
      snap: false,
      stretch: false,
    );
  }

  static const double collapsedHeight = 64.0;
  static const double expandedHeight = 168;
}

class _RemoteAppBarFlexible extends StatefulWidget {
  const _RemoteAppBarFlexible();

  // final Remote remote;

  @override
  State<_RemoteAppBarFlexible> createState() => _RemoteAppBarFlexibleState();
}

class _RemoteAppBarFlexibleState extends State<_RemoteAppBarFlexible> {
  @override
  Widget build(final BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;
    final ColorScheme colorScheme = theme.colorScheme;

    final FlexibleSpaceBarSettings settings =
        context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>()!;
    final double topPadding = MediaQuery.of(context).viewPadding.top;
    final double collapsedHeight = settings.minExtent - topPadding;
    final double scrollUnderHeight = settings.maxExtent - settings.minExtent;

    final ScaffoldState? scaffold = Scaffold.maybeOf(context);
    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);
    final bool hasDrawer = scaffold?.hasDrawer ?? false;
    final bool canPop = parentRoute?.canPop ?? false;
    final bool implyLeading = (canPop || hasDrawer);

    final bool isCollapsed = settings.isScrolledUnder ?? false;

    final double opacity;

    {
      final double space = 36;
      final double delta =
          settings.currentExtent - (collapsedHeight + topPadding) - space;

      if (delta <= 0) {
        opacity = 0.0;
      } else if (delta >= 30) {
        opacity = 1.0;
      } else {
        // Creates an ease-out curve between 0 and 1
        opacity = (delta / 30) * (2 - (delta / 30));
      }
    }

    return Stack(
      children: <Widget>[
        Opacity(
          opacity: opacity,
          child: ClipRect(
            child: OverflowBox(
              minHeight: scrollUnderHeight,
              maxHeight: scrollUnderHeight,
              alignment: Alignment.bottomLeft,
              child: Center(
                child: Container(
                  // color: Colors.black,
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: expandedTitlePadding,
                    child: SizedBox(
                      height: 68,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const CircleAvatar(
                            radius: 34,
                            child: Icon(
                              Icons.person_rounded,
                              size: 34,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Device name',
                                  style: textTheme.titleLarge!
                                      .apply(color: colorScheme.onSurface),
                                  softWrap: false,
                                  overflow: TextOverflow.fade,
                                ),
                                Text(
                                  'user@host',
                                  style: textTheme.labelLarge!.apply(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  '192.168.0.100',
                                  style: textTheme.labelSmall!.apply(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: topPadding),
          child: Container(
            height: collapsedHeight,
            padding: implyLeading
                ? collapsedTitlePaddingLeading
                : collapsedTitlePaddingNoLeading,
            child: AnimatedOpacity(
              opacity: isCollapsed ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              curve: const Cubic(0.2, 0.0, 0.0, 1.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: Icon(Icons.person_rounded),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: Text(
                          'Device name',
                          style: theme.textTheme.titleLarge!
                              .apply(color: theme.colorScheme.onSurface),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  EdgeInsetsGeometry get collapsedTitlePaddingLeading =>
      const EdgeInsetsDirectional.fromSTEB(40, 0, 110, 0);

  EdgeInsetsGeometry get collapsedTitlePaddingNoLeading =>
      const EdgeInsetsDirectional.fromSTEB(16, 0, 86, 0);

  EdgeInsetsGeometry get expandedTitlePadding =>
      const EdgeInsets.symmetric(horizontal: 16, vertical: 12);
}
