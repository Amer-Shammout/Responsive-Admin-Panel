import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/views/main/widgets/header/custom_search_field.dart';
import 'package:responsive_admin_panel/views/main/widgets/header/profile_card.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Spacer(
          flex: 2,
        ),
        const Expanded(
          child:  CustomSearchField(),
        ),
        const ProfileCard(),
      ],
    );
  }
}

