import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.blue,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCardBackground),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: ListTile(
                title: Text(
                  "Name card",
                  style: AppStyles.styleRegular16(context).copyWith(color: kwhite),
                ),
                subtitle: Text(
                  "Syah Bandi",
                  style: AppStyles.styleMedium20(context).copyWith(
                    color: kwhite,
                  ),
                ),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.styleSemiBold24(context).copyWith(
                      color: kwhite,
                    ),
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyles.styleRegular16(context).copyWith(
                      color: kwhite,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
