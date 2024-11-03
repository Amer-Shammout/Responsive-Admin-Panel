import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/utils/size_config.dart';
import 'package:responsive_admin_panel/views/main/main_view.dart';
import 'package:responsive_admin_panel/views/main/widgets/header/custom_search_field.dart';
import 'package:responsive_admin_panel/views/main/widgets/header/profile_card.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!SizeConfig.isDesktop(context))
          IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
            ),
          ),
          if (!SizeConfig.isMobile(context))
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        if (!SizeConfig.isMobile(context))
          Spacer(
            flex: SizeConfig.isDesktop(context) ? 2 : 1,
          ),
        const Expanded(
          child: CustomSearchField(),
        ),
        const ProfileCard(),
      ],
    );
  }
}
