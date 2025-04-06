import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widget/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widget/dashboard_tablet_layout.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f9fa),
      body: AdaptiveLayoutWidget(
        mobileBuilder: (context) => const SizedBox(),
        tabletBuilder: (context) => const DashboardTabletLayout(),
        desktopBuilder: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
