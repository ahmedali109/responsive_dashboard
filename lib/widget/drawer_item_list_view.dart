import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/drawer_item_model.dart';
import 'package:responsive_dashboard/util/app_images.dart';
import 'package:responsive_dashboard/widget/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  static const List<DrawerModel> items = [
    DrawerModel(title: "Dashboard", avatar: Assets.imagesCategory2),
    DrawerModel(title: "My Transaction", avatar: Assets.imagesConvertCard),
    DrawerModel(title: "Statistics", avatar: Assets.imagesGraph),
    DrawerModel(title: "Wallet Account", avatar: Assets.imagesWallet2),
    DrawerModel(title: "My Investments", avatar: Assets.imagesChart2),
  ];

  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedItem != index) {
              setState(() {
                selectedItem = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerModel: items[index],
              isActive: selectedItem == index,
            ),
          ),
        );
      },
    );
  }
}
