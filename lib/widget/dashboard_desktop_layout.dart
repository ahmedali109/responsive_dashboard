import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expenses.dart';
import 'package:responsive_dashboard/widget/custom_drawer.dart';
import 'package:responsive_dashboard/widget/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                AllExpenses(),
                SizedBox(height: 24),
                QuickInvoice()
              ],
            ))
      ],
    );
  }
}
