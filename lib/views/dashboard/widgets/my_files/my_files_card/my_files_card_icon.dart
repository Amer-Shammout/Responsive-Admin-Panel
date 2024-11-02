import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/models/my_files.dart';

class MyFilesCardIcon extends StatelessWidget {
  const MyFilesCardIcon({
    super.key,
    required this.cloudStorageInfo,
  });

  final CloudStorageInfo cloudStorageInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
