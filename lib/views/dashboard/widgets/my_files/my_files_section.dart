import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/views/dashboard/widgets/my_files/my_files_header.dart';

class MyFilesSection extends StatelessWidget {
  const MyFilesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         MyFilesHeader(),
      ],
    );
  }
}
