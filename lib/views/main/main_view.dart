import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/utils/size_config.dart';
import 'package:responsive_admin_panel/views/dashboard/dashboard_view.dart';
import 'package:responsive_admin_panel/views/main/widgets/drawer/custom_drawer.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();


class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: !SizeConfig.isDesktop(context) ? const CustomDrawer() : null,
      key: scaffoldKey,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(SizeConfig.isDesktop(context))
            const Expanded(
              child: CustomDrawer(),
            ),
            const Expanded(
              flex: 5,
              child: DashboardView(),
            ),
          ],
        ),
      ),
    );
  }
}
