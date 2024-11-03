import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/models/my_files.dart';
import 'package:responsive_admin_panel/utils/size_config.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/my_files/my_files_card/my_files_card.dart';

class MyFilesCardsGridView extends StatelessWidget {
  const MyFilesCardsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: demoMyFiels.length,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: defaultPadding,
        childAspectRatio: SizeConfig.isDesktop(context) ? 1.2 : 1,
      ),
      itemBuilder: (context, index) {
        return MyFilesCard(
          cloudStorageInfo: demoMyFiels[index],
        );
      },
    );
  }
}
