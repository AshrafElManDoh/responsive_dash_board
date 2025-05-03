import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfo> list = [
    UserInfo(
      image: "assets/images/avatar_1.svg",
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
    UserInfo(
      image: "assets/images/avatar_2.svg",
      title: "Josua Nunito",
      subTitle: "JoshNunito@gmail.com",
    ),
    UserInfo(
      image: "assets/images/avatar_1.svg",
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: list
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(userInfo: e),
              ),
            )
            .toList(),
      ),
    );

    // return ListView.separated(
    //   scrollDirection: Axis.horizontal,
    //   itemBuilder: (context, index) {
    //     return IntrinsicWidth(child: UserInfoListTile(userInfo: list[index]));
    //   },
    //   separatorBuilder: (context, index) => const SizedBox(
    //     width: 10,
    //   ),
    //   itemCount: list.length,
    // );
  }
}
