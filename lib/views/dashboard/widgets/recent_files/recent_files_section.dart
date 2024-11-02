import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/custom_container.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/recent_files/recent_files_table/recent_files_table.dart';

class RecentFilesSection extends StatelessWidget {
  const RecentFilesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            width: double.infinity,
            child:  RecentFilesTable(),
          ),
        ],
      ),
    );
  }
}