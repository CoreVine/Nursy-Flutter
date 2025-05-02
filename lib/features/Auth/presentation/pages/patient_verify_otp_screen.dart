import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';

import 'package:nursy/features/Auth/presentation/widgets/patient_otp_verify_form.dart';
import 'package:nursy/generated/l10n.dart';

class PatientVerifyOtpScreen extends StatelessWidget {
  const PatientVerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.skyBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 64.h),
                  Center(child: Image.asset(Assets.assetsImagesLogo, height: 110)),

                  SizedBox(height: 48.h),
                  Text(
                    S.of(context).verify_phone,
                    style: AppTextStyles.ibmPlexSans20Bold(context).copyWith(color: AppColors.white),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    S.of(context).sms_sent,
                    style: AppTextStyles.inter14Regular(context).copyWith(color: AppColors.white),
                  ),
                  SizedBox(height: 32.h),
                  PatientOTPVerifyForm(),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
