import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/model/user_info_model.dart';
import 'package:responsive_dashboard/util/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfo,
  });
  final UserInfoModel userInfo;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfo.img),
          title: Text(
            userInfo.title,
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            userInfo.subtitle,
            style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
