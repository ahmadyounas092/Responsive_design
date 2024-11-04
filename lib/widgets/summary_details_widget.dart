import 'package:flutter/material.dart';
import 'package:responsive_design/widgets/custom_card_widget.dart';

class SummaryDetailsWidget extends StatelessWidget {
  const SummaryDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: CustomCardWidget(
          color: const Color(0xff2f353e),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildDetails("Cal", "305"),
              buildDetails("Steps", "12567"),
              buildDetails("Distance", "7km"),
              buildDetails("Sleep", "7hr"),
            ],
          )),
    );
  }
}

Widget buildDetails(String key, String value) {
  return Column(
    children: [
      Text(
        key,
        style: const TextStyle(color: Colors.grey, fontSize: 11),
      ),
      const SizedBox(
        height: 2,
      ),
      Text(
        value,
        style: const TextStyle(fontSize: 14),
      )
    ],
  );
}
