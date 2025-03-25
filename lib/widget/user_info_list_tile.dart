import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/util/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.avatar,
  });
  final String title;
  final String subtitle;
  final String avatar;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(avatar),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
