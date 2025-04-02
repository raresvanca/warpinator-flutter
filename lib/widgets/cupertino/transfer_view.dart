import 'package:flutter/cupertino.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CupertinoTransferView extends StatelessWidget {
  const CupertinoTransferView({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: CupertinoColors.systemGreen.resolveFrom(context),
            foregroundColor: CupertinoColors.white,
            icon: CupertinoIcons.checkmark,
            spacing: 0,
          ),
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: CupertinoColors.systemRed.resolveFrom(context),
            foregroundColor: CupertinoColors.white,
            icon: CupertinoIcons.xmark_circle_fill,
            spacing: 0,
          ),
        ],
      ),
      child: const CupertinoListTile.notched(
        title: Text('my_file.file'),
        subtitle: Text('Waiting for confirmation'),
        additionalInfo: Text('1.2 MB'),
        leading: Icon(
          CupertinoIcons.arrow_down_to_line,
        ),
      ),
    );
  }
}
