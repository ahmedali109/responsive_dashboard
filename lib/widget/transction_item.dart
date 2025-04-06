import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/transction_model.dart';
import 'package:responsive_dashboard/util/app_styles.dart';

class TransctionItem extends StatelessWidget {
  const TransctionItem({super.key, required this.transctionModel});
  final TransctionModel transctionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
          title: Text(transctionModel.title, style: AppStyles.styleSemiBold16),
          subtitle: Text(
            transctionModel.date,
            style: AppStyles.styleRegular16.copyWith(
              color: const Color(0xFFB7B7B7),
            ),
          ),
          trailing: Text(
            transctionModel.amount,
            style: AppStyles.styleSemiBold20.copyWith(
              color: transctionModel.isWithDraw
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7CD87A),
            ),
          )),
    );
  }
}
