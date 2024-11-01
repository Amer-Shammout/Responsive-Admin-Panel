import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/custom_chart.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/custom_container.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/storage_details_cards_list.dart';

class StorageDetailsSection extends StatelessWidget {
  const StorageDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          CustomChart(),
          StorageDetailsCardsList(),
        ],
      ),
    );
  }
}

