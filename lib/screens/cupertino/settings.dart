import 'package:flutter/cupertino.dart';

class SettingsScreenCupertino extends StatelessWidget {
  const SettingsScreenCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Settings'),
          ),
          sectionBuilder(
            label: const Text('Identity'),
            footer: const Text(
              'Your device name and profile picture are used to identify your device on the network.',
            ),
            children: identitySection,
          ),
          sectionBuilder(
            label: const Text('Transfers'),
            children: transfersSection,
          ),
          sectionBuilder(
            label: const Text('Network'),
            footer: const Text(
              'The group code is a shared key that allows trusted devices on the local network to see one another in Warpinator. Any devices you wish to connect with must be using the same group code.',
            ),
            children: networkSection,
          ),
        ],
      ),
    );
  }

  List<Widget> get identitySection {
    return [
      CupertinoListTile.notched(
        title: const Text('Device name'),
        subtitle: const Text('Your iphone'),
        onTap: () {},
      ),
      CupertinoListTile.notched(
        title: const Text('Profile picture'),
        trailing: Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: CupertinoColors.black,
          ),
          height: 40,
          width: 40,
        ),
        onTap: () {},
      ),
    ];
  }

  List<Widget> get transfersSection {
    return [
      CupertinoListTile.notched(
        title: const Text('Download location'),
        subtitle: const Text('/some/path'),
        onTap: () {},
      ),
      CupertinoFormRow(
        prefix: const SettingsPrefix(
          title: Text('Show notifications about transfers'),
        ),
        child: CupertinoSwitch(
          value: true,
          onChanged: (value) {},
        ),
      ),
      CupertinoFormRow(
        prefix: const SettingsPrefix(
          title: Text('Overwrite existing files'),
        ),
        child: CupertinoSwitch(
          value: false,
          onChanged: (value) {},
        ),
      ),
      CupertinoFormRow(
        prefix: const SettingsPrefix(
          title: Text('Automatically accept transfers'),
        ),
        child: CupertinoSwitch(
          value: true,
          onChanged: (value) {},
        ),
      ),
      CupertinoFormRow(
        prefix: const SettingsPrefix(
          title: Text('Use compression'),
        ),
        child: CupertinoSwitch(
          value: true,
          onChanged: (value) {},
        ),
      ),
    ];
  }

  List<Widget> get networkSection {
    return [
      CupertinoListTile.notched(
        title: const Text('Group code'),
        subtitle: const Text('Warpinator'),
        onTap: () {},
      ),
      CupertinoListTile.notched(
        title: const Text('Transfers port'),
        subtitle: const Text('42000'),
        onTap: () {},
      ),
      CupertinoListTile.notched(
        title: const Text('Registration port'),
        subtitle: const Text('42001'),
        onTap: () {},
      ),
    ];
  }

  SliverToBoxAdapter sectionBuilder({
    Widget? footer,
    required Widget label,
    required List<Widget> children,
  }) {
    return SliverToBoxAdapter(
      child: CupertinoFormSection.insetGrouped(
        footer: footer == null
            ? null
            : DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 12,
                  color: CupertinoColors.systemGrey,
                ),
                child: footer,
              ),
        clipBehavior: Clip.antiAlias,
        header: label,
        children: children,
      ),
    );
  }
}

class SettingsPrefix extends StatelessWidget {
  const SettingsPrefix({
    super.key,
    required this.title,
  });

  final Widget title;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle =
        CupertinoTheme.of(context).textTheme.textStyle.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            );

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(
        28.0 - 20.0,
        10.0 - 6,
        14.0 - 6,
        10.0 - 6,
      ),
      child: DefaultTextStyle(style: textStyle, child: title),
    );
  }
}
