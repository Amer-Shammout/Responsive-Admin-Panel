import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/models/my_files.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/custom_container.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/my_files/progress_line_indicator.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(
                  defaultPadding * 0.75,
                ),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: cloudStorageInfo.color.withOpacity(
                    .1,
                  ),
                ),
                child: SvgPicture.asset(
                  cloudStorageInfo.svgSrc,
                  color: cloudStorageInfo.color,
                ),
              ),
              const Icon(
                Icons.more_vert,
                color: Colors.white54,
              ),
            ],
          ),
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
      ),
    );
  }
}
