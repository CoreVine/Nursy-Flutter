import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/features/Auth/presentation/widgets/nurse_register_screen.dart';

class RegisterNurseScreen extends StatelessWidget {
  const RegisterNurseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.skyBlue,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 312.h,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Assets.assetsImagesRectangle1))),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset(Assets.assetsImagesNurseSignup1, height: 110),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(children: [SizedBox(height: 48.h), NurseRegisterScreen()]),
            ),
          ],
        ),
      ),
    );
  }
}
