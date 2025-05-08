import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';
import 'package:nursy/generated/l10n.dart';

class AdditionalInfoSection extends StatelessWidget {
  const AdditionalInfoSection({super.key, required this.additionalInfoController});
  final TextEditingController additionalInfoController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).additional_information,
          style: AppTextStyles.ibmPlexSans16Medium(context).copyWith(color: AppColors.skyBlue),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          decoration: InputDecoration(
            hintText: S.of(context).additional_information,
            hintStyle: AppTextStyles.ibmPlexSans14Regular(context).copyWith(color: AppColors.lightGray),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.lightGray),
              borderRadius: BorderRadius.circular(8.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.skyBlue, width: 2),
              borderRadius: BorderRadius.circular(8.r),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.deepRed),
              borderRadius: BorderRadius.circular(8.r),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          ),
          maxLines: 3,
          style: AppTextStyles.ibmPlexSans14Regular(context),
          controller: additionalInfoController,
        ),
      ],
    );
  }
}
