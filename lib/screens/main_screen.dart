import 'package:flutter/material.dart';
import 'package:responsive_design/utils/constant.dart';
import 'package:responsive_design/utils/responsive.dart';
import 'package:responsive_design/widgets/dashboard_widget.dart';
import 'package:responsive_design/widgets/side_menu_widget.dart';
import 'package:responsive_design/widgets/summary_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isWeb = Responsive.isWeb(context);

    return Scaffold(
      drawer: !isWeb
          ? Drawer(
              child: Container(
                width: 250,
                color: cardBackgroundColor,
                child: const SideMenuWidget(),
              ),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            if (isWeb)
              const Expanded(
                flex: 2,
                child: SideMenuWidget(),
              ),
            Expanded(
              flex: isWeb ? 7 : 10,
              child: const DashboardWidget(),
            ),
            if (isWeb)
              const Expanded(
                flex: 3,
                child: SummaryWidget(),
              ),
          ],
        ),
      ),
    );
  }
}
