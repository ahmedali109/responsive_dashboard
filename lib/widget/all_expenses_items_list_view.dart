import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/all_expenses_model.dart';
import 'package:responsive_dashboard/util/app_images.dart';
import 'package:responsive_dashboard/widget/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});
  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  static const List<AllExpensesModel> items = [
    AllExpensesModel(
        title: "Balance",
        date: "April 2022",
        image: Assets.imagesMoneys,
        price: r"$20,129"),
    AllExpensesModel(
        title: "Income",
        date: "April 2022",
        image: Assets.imagesCardSend,
        price: r"$20,129"),
    AllExpensesModel(
        title: "Expenses",
        date: "April 2022",
        image: Assets.imagesCardReceive,
        price: r"$20,129"),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: items.asMap().entries.map((e) {
      final idx = e.key;
      final item = e.value;
      return Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = idx;
            });
          },
          child: Padding(
            padding: idx == 1
                ? const EdgeInsets.symmetric(horizontal: 12)
                : EdgeInsets.zero,
            child: AllExpensesItem(
              expensesModel: item,
              isSelected: selectedIndex == idx,
            ),
          ),
        ),
      );
    }).toList());
  }
}
