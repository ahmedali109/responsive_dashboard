import 'package:flutter/material.dart';
import 'package:responsive_dashboard/util/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.title, this.background, this.textColor});
  final String title;
  final Color? background;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: background ?? const Color(0xFF4DB7F2),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: AppStyles.styleSemiBold18.copyWith(color: textColor),
        ),
      ),
    );
  }
}
