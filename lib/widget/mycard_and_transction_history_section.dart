import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/mycard_section.dart';
import 'package:responsive_dashboard/widget/transction_history.dart';

class MycardAndTransctionHistorySection extends StatelessWidget {
  const MycardAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MycardSection(),
        Divider(
          height: 40,
          color: Color(0xFFF1F1F1),
        ),
        TransctionHistory()
      ],
    );
  }
}
