import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/transction_model.dart';
import 'package:responsive_dashboard/widget/transction_item.dart';

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});
  static const List<TransctionModel> items = [
    TransctionModel(
      title: 'Payment Received',
      date: '12 Jan 2023',
      amount: '\$20120.00',
      isWithDraw: false,
    ),
    TransctionModel(
      title: 'Payment withdraw',
      date: '13 Jan 2023',
      amount: '\$100000.00',
      isWithDraw: true,
    ),
    TransctionModel(
      title: 'Payment withdraw',
      date: '14 Jan 2023',
      amount: '\$50000.00',
      isWithDraw: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, idx) {
        return TransctionItem(
          transctionModel: items[idx],
        );
      },
    );
  }
}
