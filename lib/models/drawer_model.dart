import 'package:responsive_admin_panel/utils/app_icons.dart';

class DrawerModel {
  final String icon, title;

  const DrawerModel({
    required this.icon,
    required this.title,
  });
}

List drawerItems = [
  const DrawerModel(
    icon: Assets.iconsMenuDashbord,
    title: 'Dashboard',
  ),
  const DrawerModel(
    icon: Assets.iconsMenuTran,
    title: 'Transaction',
  ),
  const DrawerModel(
    icon: Assets.iconsMenuTask,
    title: 'Task',
  ),
  const DrawerModel(
    icon: Assets.iconsMenuDoc,
    title: 'Documents',
  ),
  const DrawerModel(
    icon: Assets.iconsMenuStore,
    title: 'Store',
  ),
  const DrawerModel(
    icon: Assets.iconsMenuNotification,
    title: 'Notification',
  ),
  const DrawerModel(
    icon: Assets.iconsMenuProfile,
    title: 'Profile',
  ),
  const DrawerModel(
    icon: Assets.iconsMenuSetting,
    title: 'Settings',
  ),
];
