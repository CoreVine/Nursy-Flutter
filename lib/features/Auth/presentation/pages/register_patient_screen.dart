import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/features/Auth/presentation/widgets/patient_register_form_section.dart';

class RegisterPatientScreen extends StatelessWidget {
  const RegisterPatientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.skyBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 64.h),
                Image.asset(Assets.assetsImagesLogo, height: 110),
                SizedBox(height: 48.h),
                PatientRegisterFormSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
