import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/models/my_files.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/my_files/my_files_card/progress_line_indicator.dart';

class MyFilesCardInfo extends StatelessWidget {
  const MyFilesCardInfo({
    super.key,
    required this.cloudStorageInfo,
  });

  final CloudStorageInfo cloudStorageInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
        Text(
       cloudStorageInfo.title,
       maxLines: 1,
       overflow: TextOverflow.ellipsis,
     ),
     ProgressLineIndicator(
       color: cloudStorageInfo.color,
       percentage: cloudStorageInfo.percentage,
     ),
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Text(
           "${cloudStorageInfo.numOfFiels} Files",
           style: Theme.of(context).textTheme.bodySmall!.copyWith(
                 color: Colors.white70,
               ),
         ),
         Text(
           cloudStorageInfo.totalStorage,
           style: Theme.of(context).textTheme.bodySmall!.copyWith(
                 color: Colors.white,
               ),
         ),
       ],
     ),
     ],
    );
  }
}

