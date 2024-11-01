import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/storage_details_section.dart';
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
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.white,
                    height: 500,
                  ),
                ),
                const SizedBox(
                  width: defaultPadding,
                ),
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

