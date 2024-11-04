import 'package:responsive_design/model/health_model.dart';

class HealthDetailsData {
  final healthData = const <HealthModel>[
    HealthModel(
        icon: "assets/icons/burn.png", value: "305", title: "Calories burned"),
    HealthModel(icon: "assets/icons/steps.png", value: "12567", title: "Steps"),
    HealthModel(
        icon: "assets/icons/distance.png", value: "7km", title: "Distnace"),
    HealthModel(icon: "assets/icons/sleep.png", value: "7h48m", title: "Sleep"),
  ];
}
