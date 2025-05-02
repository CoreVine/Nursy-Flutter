import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/helpers/constants.dart';
import 'package:nursy/core/helpers/extensions.dart';
import 'package:nursy/core/theming/app_colors.dart';

import '../../core/routing/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      !hasPassedInto
          ? context.pushReplacementNamed(Routes.onBoardingScreen)
          : context.pushReplacementNamed(Routes.authScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.skyBlue,
      body: Column(
        spacing: 64.h,
        children: [
          SizedBox.shrink(),
          SizedBox(height: 386.h, child: Image.asset(Assets.assetsImagesNurseCare)),
          SizedBox(height: 110.h, child: Image.asset(Assets.assetsImagesLogo)),
        ],
      ),
    );
  }
}
