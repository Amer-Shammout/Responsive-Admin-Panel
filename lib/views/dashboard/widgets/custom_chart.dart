import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/constants.dart';

class CustomChart extends StatelessWidget {
  const CustomChart({
    super.key,
  });

static List<PieChartSectionData> pieChartSectionsData = <PieChartSectionData>[
      PieChartSectionData(
        color: primaryColor,
        value: 25,
        showTitle: false,
        radius: 25,
      ),
       PieChartSectionData(
        color: const Color(0xff26e5ff),
        value: 20,
        showTitle: false,
        radius: 22,
      ),
       PieChartSectionData(
        color: const Color(0xffffcf26),
        value: 10,
        showTitle: false,
        radius: 19,
      ),
       PieChartSectionData(
        color: const Color(0xffee2727),
        value: 15,
        showTitle: false,
        radius: 16,
      ),
       PieChartSectionData(
        color: primaryColor.withOpacity(
          .1,
        ),
        value: 25,
        showTitle: false,
        radius: 13,
      ),
    ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartSectionsData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  "29.1",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 1,
                      ),
                ),
                const Text("of 128GB")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
