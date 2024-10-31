import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/constants.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding/2,),
      margin: const EdgeInsets.only(left: defaultPadding,),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10,),
        border: Border.all(color: Colors.white10,),
      ),
      child: Row(
        children: [
          Image.asset('assets/images/profile_pic.png',),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding/2,),
            child: Text("Angelina Jolie,",),
          ),
          const Icon(Icons.keyboard_arrow_down,),
        ],
      ),
    );
  }
}

