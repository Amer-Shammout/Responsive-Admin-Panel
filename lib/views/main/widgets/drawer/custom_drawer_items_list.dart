import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/models/drawer_model.dart';
import 'package:responsive_admin_panel/views/main/widgets/drawer/custom_drawer_item.dart';

class CustomDrawerItemsList extends StatefulWidget {
  const CustomDrawerItemsList({
    super.key,
  });

  @override
  State<CustomDrawerItemsList> createState() => _CustomDrawerItemsListState();
}

class _CustomDrawerItemsListState extends State<CustomDrawerItemsList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        drawerItems.length,
        (index) {
          return CustomDrawerItem(
            drawerModel: drawerItems[index],
            isActive: currentIndex == index,
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
          );
        },
      ),
    );
  }
}

