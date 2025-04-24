import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/user_info.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfo});
  final UserInfo userInfo;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfo.image),
        title: Text(
          userInfo.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          userInfo.subTitle,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
