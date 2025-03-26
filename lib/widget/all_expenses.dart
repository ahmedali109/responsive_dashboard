import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expenses_header.dart';
import 'package:responsive_dashboard/widget/all_expenses_items_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Column(
          children: [
            AllExpensesHeader(),
            SizedBox(height: 16),
            AllExpensesItemsListView()
          ],
        ),
      ),
    );
  }
}
