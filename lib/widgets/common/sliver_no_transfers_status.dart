import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warpinator/widgets/common/sliver_display_relative_center.dart';

class SliverNoTransfersStatus extends StatelessWidget {
  const SliverNoTransfersStatus({
    super.key,
    required this.imageColor,
    required this.titleTextStyle,
  });

  final Color imageColor;
  final TextStyle titleTextStyle;

  @override
  Widget build(BuildContext context) {
    return SliverDisplayRelativeCenter(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/states/no_transfers.svg',
                width: 300,
                colorFilter: ColorFilter.mode(
                  imageColor,
                  BlendMode.modulate,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'No transfers yet',
                style: titleTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
