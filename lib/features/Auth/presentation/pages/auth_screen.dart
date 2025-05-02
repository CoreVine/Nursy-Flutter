import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/helpers/extensions.dart';
import 'package:nursy/core/routing/routes.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/widgets/custom_button.dart';
import 'package:nursy/features/Auth/presentation/widgets/language_switcher.dart';
import 'package:nursy/generated/l10n.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.skyBlue,
      body: SafeArea(
        child: Column(
          spacing: 64.h,
          children: [
            LanguageSwitcher(),
            SizedBox(height: 386.h, child: Image.asset(Assets.assetsImagesNurseCare)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 74),
              child: Column(
                spacing: 16.h,
                children: [
                  CustomButton(text: S.of(context).sign_in, onPressed: () {}),
                  CustomButton(
                    text: S.of(context).sign_up,
                    onPressed: () {
                      context.pushNamed(Routes.registerScreen);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
