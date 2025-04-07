import 'package:end_padding/end_padding.dart';
import 'package:flutter/material.dart';

class SettingsScreenMaterial extends StatelessWidget {
  const SettingsScreenMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar.medium(
            title: Text('Settings'),
          ),
          SliverList.list(
            children: [
              ..._sectionBuilder(
                context,
                label: const Text('Identity'),
                children: identitySection,
              ),
              ..._sectionBuilder(
                context,
                label: const Text('Transfers'),
                children: transfersSection,
              ),
              ..._sectionBuilder(
                context,
                label: const Text('Network'),
                children: networkSection,
              ),
            ],
          ),
          const SliverEndPadding(),
        ],
      ),
    );
  }

  List<Widget> _sectionBuilder(
    BuildContext context, {
    required Widget label,
    required List<Widget> children,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    return [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: DefaultTextStyle(
          style: textTheme.labelLarge!.copyWith(color: colorScheme.primary),
          child: label,
        ),
      ),
      ...children,
    ];
  }

  List<Widget> get identitySection {
    return [
      ListTile(
        title: const Text('Device name'),
        subtitle: const Text('Your phone'),
        onTap: () {},
      ),
      ListTile(
        title: const Text('Profile picture'),
        subtitle: const Text('The picture used to identify your device'),
        trailing: const CircleAvatar(),
        onTap: () {},
      ),
    ];
  }

  List<Widget> get transfersSection {
    return [
      ListTile(
        title: const Text('Download location'),
        subtitle: const Text('/some/path'),
        onTap: () {},
      ),
      SwitchListTile(
        title: const Text('Show notifications about transfers'),
        value: true,
        onChanged: (value) {},
      ),
      SwitchListTile(
        title: const Text('Overwrite existing files'),
        value: false,
        onChanged: (value) {},
      ),
      SwitchListTile(
        title: const Text('Automatically accept transfers'),
        subtitle: const Text(
          'Transfers will be accepted without confirmation prompts',
        ),
        value: true,
        onChanged: (value) {},
      ),
      SwitchListTile(
        title: const Text('Use compression'),
        subtitle: const Text('Try using compression for transfers'),
        value: true,
        onChanged: (value) {},
      ),
    ];
  }

  List<Widget> get networkSection {
    return [
      ListTile(
        title: const Text('Group code'),
        subtitle: const Text('Warpinator'),
        onTap: () {},
      ),
      ListTile(
        title: const Text('Transfers port'),
        subtitle: const Text('42000'),
        onTap: () {},
      ),
      ListTile(
        title: const Text('Registration port'),
        subtitle: const Text('42001'),
        onTap: () {},
      ),
    ];
  }
}
