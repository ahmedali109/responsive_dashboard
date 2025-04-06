import 'package:flutter/material.dart';
import 'package:responsive_dashboard/util/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Income',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Color(0xFFB7B7B7),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Monthly",
                style: AppStyles.styleMedium16,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xFFB7B7B7),
              ),
            ],
          ),
        )
      ],
    );
  }
}
