import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/activa_and_inactive_drawer.dart';
import 'package:responsive_dash_board/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kwhite,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfo: UserInfo(
                image: Assets.imagesAvatar3,
                title: "Lekan Okeowo",
                subTitle: "demo@gmail.com",
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveItemDrawer(
                  drawerItemModel: DrawerItemModel(
                    title: "Setting System",
                    image: Assets.imagesSettings,
                  ),
                ),
                InActiveItemDrawer(
                  drawerItemModel: DrawerItemModel(
                    title: "Log out account",
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
