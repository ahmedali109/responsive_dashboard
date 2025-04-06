import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widget/custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: AllExpensesAndQuickInvoiceSection(),
        )
      ],
    );
  }
}
