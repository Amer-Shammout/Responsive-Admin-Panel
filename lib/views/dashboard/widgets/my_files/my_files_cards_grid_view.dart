import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/models/my_files.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/my_files/my_files_card.dart';

class MyFilesCardsGridView extends StatelessWidget {
  const MyFilesCardsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: demoMyFiels.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: defaultPadding,
        childAspectRatio: 1.3,
      ),
      itemBuilder: (context, index) {
        return MyFilesCard(
          cloudStorageInfo: demoMyFiels[index],
        );
      },
    );
  }
}
