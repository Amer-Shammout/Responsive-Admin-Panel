import 'package:flutter/material.dart';

class ProgressLineIndicator extends StatelessWidget {
  const ProgressLineIndicator({
    super.key, required this.color, required this.percentage,
  });

  final Color color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color.withOpacity(.1,),
            borderRadius: BorderRadius.circular(10,),
          ),
        ),
        LayoutBuilder(builder: (context, constraints) => Container(
          width: constraints.maxWidth * (percentage/100),
          height: 5,
          decoration: BoxDecoration(
            color:color,
            borderRadius: BorderRadius.circular(10,),
          ),
        ),)
      ],
    );
  }
}
