import 'package:flutter/material.dart';
import 'package:responsive_design/data/health_details_data.dart';
import 'package:responsive_design/utils/responsive.dart';
import 'package:responsive_design/widgets/custom_card_widget.dart';

class ActivityCardWidget extends StatelessWidget {
  const ActivityCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetailsData();
    return SizedBox(
      child: GridView.builder(
        itemCount: healthDetails.healthData.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
            crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
            mainAxisSpacing: 12),
        itemBuilder: (context, index) {
          return CustomCardWidget(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  healthDetails.healthData[index].icon,
                  width: 30,
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 4.0),
                  child: Text(
                    healthDetails.healthData[index].value,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                ),
                Text(
                  healthDetails.healthData[index].title,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
