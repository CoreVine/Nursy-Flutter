import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/helpers/extensions.dart';
import 'package:nursy/core/routing/routes.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';
import 'package:nursy/generated/l10n.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.skyBlue,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.h),
                child: Image.asset(Assets.assetsImagesLogo, height: 110),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50.r), topLeft: Radius.circular(50.r)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 48.h),
                        child: Text(
                          S.of(context).sign_up_as,
                          style: AppTextStyles.ibmPlexSans24Bold(context).copyWith(color: AppColors.skyBlue),
                        ),
                      ),
                      LeadingImageCard(
                        title: S.of(context).patient,
                        image: Assets.assetsImagesPana,
                        onTap: () => context.pushNamed(Routes.registerPatientScreen),
                      ),
                      SizedBox(height: 24.h),
                      TrailingImageCard(
                        title: S.of(context).nurse,
                        image: Assets.assetsImagesPatient,
                        onTap: () => context.pushNamed(Routes.registerNurseScreen),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TrailingImageCard extends StatelessWidget {
  const TrailingImageCard({
    super.key,
    this.onTap,
    this.textColor = AppColors.white,
    this.cardColor = AppColors.deepTeal,
    this.hasShadow = false,
    required this.title,
    required this.image,
  });

  final Color cardColor;
  final Color textColor;
  final String title;
  final String image;
  final bool hasShadow;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45.w),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow:
                hasShadow
                    ? [BoxShadow(color: Colors.black.withOpacity(.25), blurRadius: 4, offset: const Offset(0, 2))]
                    : null,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(image, height: 110.h),
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  title,
                  style: AppTextStyles.ibmPlexSans20Bold(context).copyWith(color: textColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LeadingImageCard extends StatelessWidget {
  const LeadingImageCard({
    super.key,
    this.onTap,
    this.textColor = AppColors.white,
    this.cardColor = AppColors.deepTeal,
    this.hasShadow = false,
    required this.title,
    required this.image,
  });

  final Color cardColor;
  final Color textColor;
  final String title;
  final String image;
  final bool hasShadow;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45.w),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow:
                hasShadow
                    ? [BoxShadow(color: Colors.black.withOpacity(.25), blurRadius: 4, offset: const Offset(0, 2))]
                    : null,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,

                  title,
                  style: AppTextStyles.ibmPlexSans20Bold(context).copyWith(color: textColor),
                ),
              ),
              Image.asset(image, height: 110.h),
            ],
          ),
        ),
      ),
    );
  }
}
