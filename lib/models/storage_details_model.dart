import 'package:responsive_admin_panel/utils/app_icons.dart';

class StorageDetailsModel {
  final String title, icon, amountOfFiles;
  final int numOfFiles;

  const StorageDetailsModel(
      {required this.title,
      required this.icon,
      required this.amountOfFiles,
      required this.numOfFiles});
}

const List storageDetailsItems = [
  StorageDetailsModel(
    title: "Document Files",
    icon: Assets.iconsDocuments,
    amountOfFiles: '1.3GB',
    numOfFiles: 1329,
  ),
  StorageDetailsModel(
    title: "Media Files",
    icon: Assets.iconsMedia,
    amountOfFiles: '15.3GB',
    numOfFiles: 1329,
  ),
  StorageDetailsModel(
    title: "Other Files",
    icon: Assets.iconsFolder,
    amountOfFiles: '1.3GB',
    numOfFiles: 1329,
  ),
  StorageDetailsModel(
    title: "Unknown",
    icon: Assets.iconsUnknown,
    amountOfFiles: '1.3GB',
    numOfFiles: 1329,
  ),
];
