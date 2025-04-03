import 'package:flutter/material.dart';
import 'package:responsive_dashboard/util/app_styles.dart';
import 'package:responsive_dashboard/widget/card_page_view.dart';
import 'package:responsive_dashboard/widget/dots_indicator.dart';

class MycardSection extends StatefulWidget {
  const MycardSection({super.key});

  @override
  State<MycardSection> createState() => _MycardSectionState();
}

class _MycardSectionState extends State<MycardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        const SizedBox(
          width: 420,
          child: Text(
            "My Card",
            style: AppStyles.styleSemiBold20,
          ),
        ),
        CardPageView(
          pageController: pageController,
        ),
        DotsIndicator(
          currentPageIndex: currentPageIndex,
        )
      ],
    );
  }
}
