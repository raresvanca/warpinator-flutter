import 'dart:ui' show ImageFilter;

import 'package:flutter/cupertino.dart';

class CupertinoToolbar extends StatelessWidget implements PreferredSizeWidget {
  const CupertinoToolbar({
    super.key,
    required this.children,
    this.height = kTabBarHeight,
  });

  static const double kTabBarHeight = 58;

  final List<Widget> children;

  /// The height of the [CupertinoToolbar].
  ///
  /// Defaults to 50.
  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));
    final double bottomPadding = MediaQuery.viewPaddingOf(context).bottom;

    final Color backgroundColor = CupertinoDynamicColor.resolve(
      CupertinoTheme.of(context).barBackgroundColor,
      context,
    );

    Widget result = DecoratedBox(
      decoration: BoxDecoration(color: backgroundColor),
      child: SizedBox(
        height: height + bottomPadding,
        child: Padding(
          padding: EdgeInsets.only(
            bottom: bottomPadding + 8,
            left: 8,
            right: 8,
          ),
          child: Semantics(
            explicitChildNodes: true,
            child: Row(
              // Align bottom since we want the labels to be aligned.
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: children,
            ),
          ),
        ),
      ),
    );

    result = ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: result,
      ),
    );

    return result;
  }
}
