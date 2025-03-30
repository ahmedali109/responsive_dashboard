import 'package:flutter/material.dart';
import 'package:responsive_dashboard/util/app_styles.dart';
import 'package:responsive_dashboard/widget/latest_transction_listview.dart';

class LatestTransction extends StatelessWidget {
  const LatestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16,
        ),
        SizedBox(height: 16),
        LatestTransctionListView()
      ],
    );
  }
}
