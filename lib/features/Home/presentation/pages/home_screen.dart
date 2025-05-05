import 'package:flutter/material.dart';
import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/utils/functions/launch_url.dart';
import 'package:nursy/core/widgets/custom_button_with_icon.dart';
import 'package:nursy/features/Auth/presentation/pages/register_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nursy/core/helpers/extensions.dart';
import 'package:nursy/generated/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Image.asset(Assets.assetsImagesWhiteBackgroundShape, fit: BoxFit.cover, width: context.width),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 104.h),
                    LeadingImageCard(
                      title: S.of(context).nursing_service,
                      image: Assets.assetsImagesNursingService,
                      cardColor: AppColors.white,
                      textColor: AppColors.deepTeal,
                      hasShadow: true,
                      onTap: () {},
                    ),
                    SizedBox(height: 24.h),
                    TrailingImageCard(
                      title: S.of(context).companionship,
                      image: Assets.assetsImagesCompanionship,
                      cardColor: AppColors.white,
                      textColor: AppColors.deepTeal,
                      hasShadow: true,
                      onTap: () {},
                    ),
                    SizedBox(height: 80.h),
                    CustomButtonWithIcon(
                      icon: Icon(Icons.phone_outlined, color: AppColors.white),
                      text: S.of(context).emergency_call,
                      width: 287.w,
                      bgColor: AppColors.brightTeal,
                      onPressed: () {
                        launchUrlHelper(url: "01234567890", isPhone: true);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
