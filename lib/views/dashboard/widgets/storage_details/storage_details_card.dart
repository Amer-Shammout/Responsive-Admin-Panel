import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/models/storage_details_model.dart';

class StorageDetailsCard extends StatefulWidget {
  const StorageDetailsCard({
    super.key,
    required this.item,
  });

  final StorageDetailsModel item;

  @override
  State<StorageDetailsCard> createState() => _StorageDetailsCardState();
}

class _StorageDetailsCardState extends State<StorageDetailsCard> {
  Color color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event){
        color = primaryColor.withOpacity(.2);
        setState(() {
          
        });
      },
      onExit: (event){
        color = Colors.transparent;
        setState(() {
          
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200,),
        curve: Curves.easeInCubic,
        margin: const EdgeInsets.only(
          top: defaultPadding,
        ),
        padding: const EdgeInsets.all(
          defaultPadding,
        ),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            width: 2,
            color: primaryColor.withOpacity(
              .15,
            ),
          ),
          borderRadius: BorderRadius.circular(
            defaultPadding,
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: SvgPicture.asset(
                widget.item.icon,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.item.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "${widget.item.numOfFiles}",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.white70,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              widget.item.amountOfFiles,
            ),
          ],
        ),
      ),
    );
  }
}
