import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widget/custom_drawer.dart';
import 'package:responsive_dashboard/widget/income_section.dart';
import 'package:responsive_dashboard/widget/mycard_and_transction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: AllExpensesAndQuickInvoiceSection()),
        SizedBox(width: 24),
        Expanded(
          child: Column(
          spacing: 24,
          children: [
            MycardAndTransctionHistorySection(),
            Expanded(child: IncomeSection()),
          ],
        ))
      ],
    );
  }
}
