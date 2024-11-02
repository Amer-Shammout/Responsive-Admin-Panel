import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/models/recent_file.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/recent_files/recent_files_table/recent_files_table_column.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/recent_files/recent_files_table/recent_files_table_row.dart';

class RecentFilesTable extends StatelessWidget {
  const RecentFilesTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: defaultPadding,
      horizontalMargin: 0,
      columns: [      
        recentFileTableDataColumn('File Name'),
        recentFileTableDataColumn('Date'),
        recentFileTableDataColumn('Size'),
      ],
      rows: List.generate(
        demoRecentFiles.length,
        (index) {
          return recentFileTableDataRow(
            demoRecentFiles[index],
          );
        },
      ),
    );
  }
}