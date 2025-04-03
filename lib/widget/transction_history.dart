import 'package:flutter/material.dart';
import 'package:responsive_dashboard/util/app_styles.dart';
import 'package:responsive_dashboard/widget/transction_history_header.dart';
import 'package:responsive_dashboard/widget/transction_history_list_view.dart';

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransctionHistoryHeader(),
        SizedBox(height: 20),
        Text("13 April 2023", style: AppStyles.styleSemiBold16),
        SizedBox(height: 16),
        TransctionHistoryListView()
      ],
    );
  }
}
