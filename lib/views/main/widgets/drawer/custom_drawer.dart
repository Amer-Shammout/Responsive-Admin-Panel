import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/views/main/widgets/drawer/custom_drawer_items_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding * 2,
              ),
              child: DrawerHeader(
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
            ),
            const CustomDrawerItemsList(),
          ],
        ),
      ),
    );
  }
}
