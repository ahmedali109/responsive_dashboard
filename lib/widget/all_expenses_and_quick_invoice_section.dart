import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expenses.dart';
import 'package:responsive_dashboard/widget/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
