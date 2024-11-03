import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/models/my_files.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/my_files/my_files_card/my_files_card_header.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/my_files/my_files_card/my_files_card_info.dart';

class MyFilesCard extends StatefulWidget {
  const MyFilesCard({
    super.key,
    required this.cloudStorageInfo,
  });

  final CloudStorageInfo cloudStorageInfo;

  @override
  State<MyFilesCard> createState() => _MyFilesCardState();
}

class _MyFilesCardState extends State<MyFilesCard> {
  double scale = 1;
  Color color = secondaryColor;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event){
        scale = 1.05;
        color = widget.cloudStorageInfo.color.withOpacity(.2);
        setState(() {
          
        });
      },
      onExit: (event){
        scale = 1;
        color = secondaryColor;
        setState(() {
          
        });
      },
      child: AnimatedScale(
         duration: const Duration(milliseconds: 300),
          curve: Curves.linear,
        scale: scale,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.linear,
           padding: const EdgeInsets.all(
            defaultPadding,
          ),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: MyFilesCardHeader(
                  cloudStorageInfo: widget.cloudStorageInfo,
                ),
              ),
              Expanded(
                child: MyFilesCardInfo(
                  cloudStorageInfo: widget.cloudStorageInfo,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}