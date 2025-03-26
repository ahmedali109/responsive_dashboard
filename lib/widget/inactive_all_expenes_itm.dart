import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/all_expenses_model.dart';
import 'package:responsive_dashboard/util/app_styles.dart';
import 'package:responsive_dashboard/widget/all_expenses_item_header.dart';
class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.expensesModel,
  });

  final AllExpensesModel expensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: expensesModel.image),
          const SizedBox(height: 34),
          Text(expensesModel.title, style: AppStyles.styleMedium16),
          const SizedBox(height: 8),
          Text(expensesModel.date, style: AppStyles.styleRegular14),
          const SizedBox(height: 16),
          Text(expensesModel.price, style: AppStyles.styleSemiBold24),
        ],
      ),
    );
  }
}
