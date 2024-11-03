import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/models/my_files.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/my_files/my_files_card/my_files_card.dart';

class MyFilesCardsGridView extends StatelessWidget {
  const MyFilesCardsGridView({
    super.key,
    this.crossAxisCount = 4,
    this.aspectRatio = 1,
  });

  final int crossAxisCount;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiels.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, index) {
        return MyFilesCard(
          cloudStorageInfo: demoMyFiels[index],
        );
      },
    );
  }
}
