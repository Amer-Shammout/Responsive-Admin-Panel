import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/models/my_files.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/custom_container.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/my_files/my_files_card/my_files_card_header.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/my_files/my_files_card/my_files_card_info.dart';

class MyFilesCard extends StatelessWidget {
  const MyFilesCard({
    super.key,
    required this.cloudStorageInfo,
  });

  final CloudStorageInfo cloudStorageInfo;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: MyFilesCardHeader(
              cloudStorageInfo: cloudStorageInfo,
            ),
          ),
          Expanded(
            child: MyFilesCardInfo(
              cloudStorageInfo: cloudStorageInfo,
            ),
          ),
        ],
      ),
    );
  }
}