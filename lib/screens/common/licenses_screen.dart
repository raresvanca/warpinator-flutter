import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show Priority, SchedulerBinding;
import 'package:flutter/services.dart';
import 'package:master_detail_flow/master_detail_flow.dart';

class LicensesScreen extends StatelessWidget {
  const LicensesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MDLicensesPage(
      items: [
        const MDLicensesPageHeader(
          appName: Text('Warpinator'),
        ),
        MDItem(
          title: const Text('Warpinator'),
          trailing: Icon(Icons.adaptive.arrow_forward),
          pageBuilder: (context) {
            return DetailsPageScaffold(
              title: const Text('Warpinator'),
              body: FutureBuilder(
                future: licenseLoader(),
                builder: licenseDetailsPageBuilder,
              ),
            );
          },
        ),
      ],
    );
  }

  Widget licenseDetailsPageBuilder(context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }
    if (snapshot.hasError) {
      return const Center(child: Text('Error loading license'));
    }
    if (!snapshot.hasData) {
      return const Center(child: Text('No license found'));
    }
    final paragraphs = snapshot.data!;

    final licenses = <Widget>[];

    for (final paragraph in paragraphs) {
      if (paragraph.indent == LicenseParagraph.centeredIndent) {
        licenses.add(
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              paragraph.text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        );
      } else {
        assert(paragraph.indent >= 0);
        licenses.add(
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 8,
              start: 16.0 * paragraph.indent,
            ),
            child: Text(paragraph.text),
          ),
        );
      }
    }
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: ListView.builder(
        itemBuilder: (context, index) => licenses[index],
        itemCount: licenses.length,
        shrinkWrap: true,
        primary: false,
        addAutomaticKeepAlives: true,
      ),
    );
  }

  Future<List<LicenseParagraph>> licenseLoader() async {
    final license = await rootBundle.loadString('assets/text/licenses.md');
    final entry = LicenseEntryWithLineBreaks(['Warpinator'], license);

    final paragraphs =
        await SchedulerBinding.instance.scheduleTask<List<LicenseParagraph>>(
      () => entry.paragraphs.toList(growable: false),
      Priority.animation,
      debugLabel: 'License',
    );
    return paragraphs;
  }
}
