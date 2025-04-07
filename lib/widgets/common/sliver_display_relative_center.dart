import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';

/// A sliver that contains a single box child that fills the remaining space in
/// the viewport and tries to center its child relative to the viewport by
/// offsetting the centered child to overcome previous widgets without
/// overlapping them.
///
/// Note: This works only in the vertical direction.
class SliverDisplayRelativeCenter extends SingleChildRenderObjectWidget {
  /// Creates a sliver that fills the remaining space in the viewport and
  /// centers its child relative to the viewport.
  const SliverDisplayRelativeCenter({super.key, super.child});
  @override
  RenderSliverFillPaddedByPreceding createRenderObject(BuildContext context) =>
      RenderSliverFillPaddedByPreceding();
}

/// The render object for [SliverDisplayRelativeCenter].
/// It fills the remaining space in the viewport and centers its child
/// relative to the viewport by offsetting the centered child to overcome
/// previous widgets without overlapping them.
///
/// It is based on the [RenderSliverFillRemaining] class, but with the modification
/// to center the child relative to the viewport.
class RenderSliverFillPaddedByPreceding extends RenderSliverSingleBoxAdapter {
  RenderSliverFillPaddedByPreceding();

  @override
  void performLayout() {
    final SliverConstraints constraints = this.constraints;
    // Extent is the remaining space in the viewport
    double extent =
        constraints.viewportMainAxisExtent - constraints.precedingScrollExtent;

    if (child == null) {
      geometry = SliverGeometry(
        scrollExtent: extent,
        paintExtent: extent,
        maxPaintExtent: extent,
        hasVisualOverflow: false,
      );
      return;
    }

    // The center offset is the amount of space that the child should be
    // offset from the widget center to center it relative to the viewport
    final double centerOffset = constraints.precedingScrollExtent / 2;

    // Get the child's intrinsic height
    final double childExtent =
        child!.getMaxIntrinsicHeight(constraints.crossAxisExtent);

    // Use the maximum of available space and child's intrinsic height
    extent = math.max(extent, childExtent);

    // Layout the child with the calculated extent
    child!.layout(constraints.asBoxConstraints());

    final double paintedChildSize =
        calculatePaintOffset(constraints, from: 0.0, to: extent);
    assert(paintedChildSize.isFinite);
    assert(paintedChildSize >= 0.0);

    final double cacheExtent =
        calculateCacheOffset(constraints, from: 0.0, to: extent);
    geometry = SliverGeometry(
      scrollExtent: extent,
      paintExtent: paintedChildSize,
      maxPaintExtent: paintedChildSize,
      hasVisualOverflow: extent > constraints.remainingPaintExtent ||
          constraints.scrollOffset > 0.0,
      cacheExtent: cacheExtent,
    );

    setChildData(
      child!,
      constraints,
      (extent - childExtent) / 2.0 - centerOffset,
    );
  }

  // Update the child paint offset based on the center offset, while maintaining
  // the scroll offset
  void setChildData(
    RenderObject child,
    SliverConstraints constraints,
    double centerOffset,
  ) {
    final SliverPhysicalParentData childParentData =
        child.parentData! as SliverPhysicalParentData;
    childParentData.paintOffset = Offset(
      0.0,
      math.max(0, centerOffset) - constraints.scrollOffset,
    );
  }
}
