import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/models/storage_details_model.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/storage_details/storage_details_card.dart';

class StorageDetailsCardsList extends StatelessWidget {
  const StorageDetailsCardsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        storageDetailsItems.length,
        (index) {
          return StorageDetailsCard(
            item: storageDetailsItems[index],
          );
        },
      ),
    );
  }
}
