import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/models/user_info.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kwhite,
      child: Column(
        children: [
          UserInfoListTile(
            userInfo: UserInfo(
              image: Assets.imagesAvatar3,
              title: "Lekan Okeowo",
              subTitle: "demo@gmail.com",
            ),
          ),
        ],
      ),
    );
  }
}
