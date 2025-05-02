import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/helpers/extensions.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_paddings.dart';
import 'package:nursy/core/theming/app_text_styles.dart';

import 'package:nursy/generated/l10n.dart';

class OnBoardingBody3 extends StatelessWidget {
  const OnBoardingBody3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80.h),
        Image.asset(Assets.assetsImagesOnboardingNurse, fit: BoxFit.cover, width: context.width),
        SizedBox(height: 80.h),

        Center(child: Text(S.of(context).nurse, style: AppTextStyles.ibmPlexSans16Bold(context))),
        Center(
          child: SizedBox(width: 120, child: Divider(height: 32.h, color: AppColors.lightGray)),
        ),
        Center(
          child: Text(
            S.of(context).specialist_near_by,
            style: AppTextStyles.inter12SemiBold(context).copyWith(color: AppColors.mediumGray),
          ),
        ),
        SizedBox(height: AppPaddings.gap40.h),
        Image.asset(Assets.assetsImagesBlueLogo, fit: BoxFit.cover, height: 67.h),
        SizedBox(height: AppPaddings.gap10.h),
      ],
    );
  }
}
