import 'package:responsive_admin_panel/utils/app_icons.dart';

class RecentFile {
  final String icon, title, date, size;

  const RecentFile(
      {required this.icon,
      required this.title,
      required this.date,
      required this.size});
}

const List demoRecentFiles = [
  RecentFile(
    icon: Assets.iconsXdFile,
    title: "XD File",
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: Assets.iconsFigmaFile,
    title: "Figma File",
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFile(
    icon: Assets.iconsDocFile,
    title: "Documetns",
    date: "23-02-2021",
    size: "32.5mb",
  ),
  RecentFile(
    icon: Assets.iconsSoundFile,
    title: "Sound File",
    date: "21-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: Assets.iconsMediaFile,
    title: "Media File",
    date: "23-02-2021",
    size: "2.5gb",
  ),
  RecentFile(
    icon: Assets.iconsPdfFile,
    title: "Sals PDF",
    date: "25-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: Assets.iconsExcleFile,
    title: "Excel File",
    date: "25-02-2021",
    size: "34.5mb",
  ),
];
