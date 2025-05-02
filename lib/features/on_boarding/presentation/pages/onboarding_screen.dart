import 'package:flutter/material.dart';
import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/helpers/extensions.dart';

import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/features/on_boarding/presentation/widgets/bottom_indicator_section.dart';

import 'package:nursy/features/on_boarding/presentation/widgets/onboarding_body1.dart';
import 'package:nursy/features/on_boarding/presentation/widgets/onboarding_body2.dart';
import 'package:nursy/features/on_boarding/presentation/widgets/onboarding_body3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<Widget> pages = [const OnBoardingBody1(), const OnBoardingBody2(), const OnBoardingBody3()];
  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceBlue,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Image.asset(Assets.assetsImagesWhiteBackgroundShape, fit: BoxFit.cover, width: context.width),
            ),
            PageView.builder(
              itemCount: pages.length,
              itemBuilder: (context, index) => pages[index],
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),

            BottomIndicatorSection(pageController: pageController, pages: pages, currentPage: currentPage),
          ],
        ),
      ),
    );
  }
}
