import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_background_widget.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        setState(() {
          currentIndex = pageController.page!.round();
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "My cards",
            style: AppStyles.styleSemiBold20,
          ),
          const SizedBox(
            height: 20,
          ),
          MyCardsPageView(
            pageController: pageController,
          ),
          const SizedBox(
            height: 20,
          ),
          DotsIndicator(
            currentCardIndex: currentIndex,
          ),
        ],
      ),
    );
  }
}
