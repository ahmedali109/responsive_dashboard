import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/item_detail_model.dart';
import 'package:responsive_dashboard/util/app_styles.dart';
import 'package:responsive_dashboard/widget/custom_background_container.dart';
import 'package:responsive_dashboard/widget/income_chart.dart';
import 'package:responsive_dashboard/widget/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          SizedBox(height: 20),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: IncomeChart()),
                Expanded(
                  child: IncomeDetails(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<ItemDetailModel> items = [
    ItemDetailModel(
      title: 'Total',
      subtitle: '40%',
      color: Color(0xFF4CAF50),
    ),
    ItemDetailModel(
      title: 'Expenses',
      subtitle: '25%',
      color: Color(0xFFF44336),
    ),
    ItemDetailModel(
      title: 'Net',
      subtitle: '20%',
      color: Color(0xFF2196F3),
    ),
    ItemDetailModel(
      title: 'Savings',
      subtitle: '22%',
      color: Color(0xFFFF9800),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return IncomeItem(itemDetailModel: items[index],);
      },
    );
  }
}

class IncomeItem extends StatelessWidget {
  const IncomeItem({super.key, required this.itemDetailModel});
  final ItemDetailModel itemDetailModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        itemDetailModel.subtitle,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
