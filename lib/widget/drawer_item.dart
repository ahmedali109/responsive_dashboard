import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/drawer_item_model.dart';
import 'package:responsive_dashboard/widget/active_drawer_item.dart';
import 'package:responsive_dashboard/widget/inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerModel, required this.isActive});
  final DrawerModel drawerModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerModel: drawerModel)
        : InActiveDrawerItem(drawerModel: drawerModel);
  }
}
