import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/models/my_files.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/my_files/my_files_card/my_files_card_icon.dart';

class MyFilesCardHeader extends StatelessWidget {
  const MyFilesCardHeader({
    super.key,
    required this.cloudStorageInfo,
  });

  final CloudStorageInfo cloudStorageInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyFilesCardIcon(
          cloudStorageInfo: cloudStorageInfo,
        ),
        const Icon(
          Icons.more_vert,
          color: Colors.white54,
        ),
      ],
    );
  }
}
