import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/constants.dart';

class MyFilesHeader extends StatelessWidget {
  const MyFilesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "My Files",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          label: const Text(
            'Add Now',
            style: TextStyle(color: Colors.white,),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding * 1.5,
              vertical: defaultPadding,
            ),
          ),
        ),
      ],
    );
  }
}
