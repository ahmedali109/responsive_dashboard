import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/user_info_model.dart';
import 'package:responsive_dashboard/util/app_images.dart';
import 'package:responsive_dashboard/widget/user_info_list_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});
  static const List<UserInfoModel> userInfo = [
    UserInfoModel(
      img: Assets.imagesAvatar1,
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      img: Assets.imagesAvatar2,
      title: "Josua Nunito",
      subtitle: "JoshNunito@gmail.com",
    ),
    UserInfoModel(
      img: Assets.imagesAvatar1,
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: userInfo
              .map((user) =>
                  IntrinsicWidth(child: UserInfoListTile(userInfo: user)))
              .toList()),
    );

    // Uncomment the following code if you want to use ListView.builder

    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: userInfo.length,
    //     itemBuilder: (context, idx) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(userInfo: userInfo[idx]),
    //       );
    //     },
    //   ),
    // );
  }
}
