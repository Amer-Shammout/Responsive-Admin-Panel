import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/utils/app_icons.dart';

class CloudStorageInfo {
  final String svgSrc, title, totalStorage;
  final int numOfFiels, percentage;
  final Color color;

  const CloudStorageInfo(
      {required this.svgSrc,
      required this.title,
      required this.totalStorage,
      required this.numOfFiels,
      required this.percentage,
      required this.color});
}

 const List demoMyFiels = [
  CloudStorageInfo(
    title: "Documents",
    numOfFiels: 1328,
    svgSrc: Assets.iconsDocuments,
    totalStorage: "1.9GB",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Google Drive",
    numOfFiels: 1328,
    svgSrc: Assets.iconsGoogleDrive,
    totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "One Drive",
    numOfFiels: 1328,
    svgSrc: Assets.iconsOneDrive,
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Documents",
    numOfFiels: 5328,
    svgSrc: Assets.iconsDropBox,
    totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];
