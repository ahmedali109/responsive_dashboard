import 'package:flutter/material.dart';
import 'package:responsive_dashboard/util/app_styles.dart';
import 'package:responsive_dashboard/widget/all_expanses_range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20),
        Expanded(child: SizedBox()),
        RangeOptions(),
      ],
    );
  }
}
