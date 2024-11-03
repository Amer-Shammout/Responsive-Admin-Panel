import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/adaptive_layout.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/my_files/my_files_card/my_files_cards_grid_view.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/my_files/my_files_header.dart';

class MyFilesSection extends StatelessWidget {
  const MyFilesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        const MyFilesHeader(),
        const SizedBox(
          height: defaultPadding,
        ),
        AdaptiveLayout(
          mobileLayout: (context) => MyFilesCardsGridView(crossAxisCount: _size.width < 650 ? 2 : 4,aspectRatio: _size.width < 650 ? 1.3 : 1,),
          tabletLayout: (context) => const MyFilesCardsGridView(),
          desktopLayout: (context) => MyFilesCardsGridView(aspectRatio: _size.width < 1400 ? 1.1 : 1.4,),
        )
      ],
    );
  }
}
