import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/utils/size_config.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/my_files/my_files_section.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/recent_files/recent_files_section.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/storage_details/storage_details_section.dart';
import 'package:responsive_admin_panel/views/main/widgets/header/custom_header.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(
          defaultPadding,
        ),
        child: Column(
          children: [
            const CustomHeader(
              title: 'Dashboard',
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      const MyFilesSection(),
                      const SizedBox(
                        height: defaultPadding,
                      ),
                      const RecentFilesSection(),
                      if (SizeConfig.isMobile(context))
                        const SizedBox(
                          height: defaultPadding,
                        ),
                      if (SizeConfig.isMobile(context))
                        const StorageDetailsSection(),
                    ],
                  ),
                ),
                if (!SizeConfig.isMobile(context))
                  const SizedBox(
                    width: defaultPadding,
                  ),
                if (!SizeConfig.isMobile(context))
                  const Expanded(
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
