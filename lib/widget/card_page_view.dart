import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/my_card.dart';

class CardPageView extends StatelessWidget {
  const CardPageView({super.key , required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, idx) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: MyCard(),
        );
      },
    );
  }
}
