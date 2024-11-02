 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/models/recent_file.dart';

DataRow recentFileTableDataRow(RecentFile recentFile) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                recentFile.icon,
                height: 30,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                ),
                child: Text(
                  recentFile.title,
                ),
              ),
            ],
          ),
        ),
        DataCell(
          Text(
            recentFile.date,
          ),
        ),
        DataCell(
          Text(
            recentFile.size,
          ),
        ),
      ],
    );
  }

