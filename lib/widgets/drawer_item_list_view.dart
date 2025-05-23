import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  static const drawerList = [
    DrawerItemModel(
      title: "Dashboard",
      image: Assets.imagesDashboard,
    ),
    DrawerItemModel(
      title: "My Transaction",
      image: Assets.imagesMyTransctions,
    ),
    DrawerItemModel(
      title: "Statistics",
      image: Assets.imagesStatistics,
    ),
    DrawerItemModel(
      title: "Wallet Account",
      image: Assets.imagesWalletAccount,
    ),
    DrawerItemModel(
      title: "My Investments",
      image: Assets.imagesMyInvestments,
    ),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            setState(() {
              activeIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            drawerItemModel: drawerList[index],
            isActive: activeIndex == index,
          ),
        ),
      ),
      itemCount: drawerList.length,
    );
  }
}
