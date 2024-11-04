import 'package:flutter/material.dart';
import 'package:responsive_design/data/schedule_task_data.dart';
import 'package:responsive_design/widgets/custom_card_widget.dart';

class ScheduledWidget extends StatelessWidget {
  const ScheduledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ScheduleTaskData();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Scheduled",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 12,
          ),
          for (var index = 0; index < data.scheduled.length; index++)
            Padding(
              padding: const EdgeInsets.only(
                top: 7.5,
              ),
              child: CustomCardWidget(
                color: Colors.black,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.scheduled[index].title,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              data.scheduled[index].date,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const Icon(Icons.more)
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
