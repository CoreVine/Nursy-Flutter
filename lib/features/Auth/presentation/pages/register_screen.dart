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
                      PatientCard(),
                      SizedBox(height: 24.h),
                      NurseCard(),
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

class NurseCard extends StatelessWidget {
  const NurseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(Routes.registerNurseScreen),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 45.w),
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        decoration: BoxDecoration(color: AppColors.deepTeal, borderRadius: BorderRadius.circular(10.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(Assets.assetsImagesPatient, height: 110.h),
            Text(S.of(context).nurse, style: AppTextStyles.ibmPlexSans20Bold(context).copyWith(color: AppColors.white)),
          ],
        ),
      ),
    );
  }
}

class PatientCard extends StatelessWidget {
  const PatientCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(Routes.registerPatientScreen),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 45.w),
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        decoration: BoxDecoration(color: AppColors.deepTeal, borderRadius: BorderRadius.circular(10.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              S.of(context).patient,
              style: AppTextStyles.ibmPlexSans20Bold(context).copyWith(color: AppColors.white),
            ),
            Image.asset(Assets.assetsImagesPana, height: 110.h),
          ],
        ),
      ),
    );
  }
}
