import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warpinator/widgets/common/sliver_display_relative_center.dart';

class SliverNoDevicesStatus extends StatelessWidget {
  const SliverNoDevicesStatus({
    super.key,
    required this.imageColor,
    required this.titleTextStyle,
    required this.subtitleTextStyle,
  });

  final Color imageColor;
  final TextStyle titleTextStyle;
  final TextStyle subtitleTextStyle;

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
                'assets/states/no_devices.svg',
                width: 300,
                colorFilter: ColorFilter.mode(
                  imageColor,
                  BlendMode.modulate,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'No devices found',
                style: titleTextStyle,
              ),
              const SizedBox(height: 16),
              Text(
                'Make sure your devices are on the same network and use the same group code.',
                textAlign: TextAlign.center,
                style: subtitleTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
