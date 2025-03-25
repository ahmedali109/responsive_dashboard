import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/model/drawer_item_model.dart';
import 'package:responsive_dashboard/util/app_styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerModel,
  });

  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerModel.avatar),
      title: Text(
        drawerModel.title,
        style: AppStyles.styleBold16,
      ),
      trailing: Container(
        width: 4,
        decoration: const BoxDecoration(
          color: Color(0xff4eb7f2),
        ),
      ),
    );
  }
}
