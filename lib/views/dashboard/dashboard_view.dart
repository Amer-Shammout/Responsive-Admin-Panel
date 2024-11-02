import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/my_files/my_files_section.dart';
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
                  child: MyFilesSection(),
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