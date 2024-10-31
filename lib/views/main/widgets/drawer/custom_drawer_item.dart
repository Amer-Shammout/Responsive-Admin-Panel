import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/models/drawer_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.onTap,
    required this.isActive,
    required this.drawerModel,
  });

  final DrawerModel drawerModel;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selectedTileColor: bgColor.withOpacity(.9),
      selected: isActive,
      onTap: onTap,
      leading: SvgPicture.asset(
        drawerModel.icon,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        drawerModel.title,
        style: const TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
