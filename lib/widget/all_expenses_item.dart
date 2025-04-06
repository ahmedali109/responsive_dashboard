import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/all_expenses_model.dart';
import 'package:responsive_dashboard/widget/active_all_expesnes_item.dart';
import 'package:responsive_dashboard/widget/inactive_all_expenes_itm.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.expensesModel, required this.isSelected});
  final AllExpensesModel expensesModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(expensesModel: expensesModel)
        : InActiveAllExpensesItem(expensesModel: expensesModel);
  }
}
