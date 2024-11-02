import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/models/recent_file.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/custom_container.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/my_files/my_files_section.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/recent_files/recent_files_section.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/storage_details/storage_details_section.dart';
import 'package:responsive_admin_panel/views/main/widgets/header/custom_header.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(
          defaultPadding,
        ),
        child: Column(
          children: [
            CustomHeader(
              title: 'Dashboard',
            ),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFilesSection(),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      RecentFilesSection(),
                    ],
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 2,
                  child: StorageDetailsSection(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
