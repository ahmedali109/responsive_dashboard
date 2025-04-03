import 'package:flutter/material.dart';
import 'package:responsive_dashboard/util/app_styles.dart';

class TransctionHistoryHeader extends StatelessWidget {
  const TransctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Transction History",
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(
          flex: 1,
        ),
        Text(
          "See All",
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
