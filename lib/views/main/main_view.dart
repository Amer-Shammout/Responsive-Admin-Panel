import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/views/dashboard/dashboard_view.dart';
import 'package:responsive_admin_panel/views/main/widgets/drawer/custom_drawer.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CustomDrawer(),
            ),
            Expanded(
              flex: 5,
              child: DashboardView(),
            ),
          ],
        ),
      ),
    );
  }
}
