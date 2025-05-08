import 'package:flutter/material.dart';
import 'package:nursy/generated/l10n.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_options_radio_buttons.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({
    super.key,
    required this.location,
    required this.onValueChanged,
    required this.locationController,
  });
  final String location;
  final Function(String?) onValueChanged;
  final TextEditingController locationController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).location,
          style: AppTextStyles.ibmPlexSans16Medium(context).copyWith(color: AppColors.skyBlue),
        ),
        SizedBox(height: 8.h),
        CustomOptionsRadioButtons(
          mainAxisAlignment: MainAxisAlignment.start,
          selectedValue: location,
          onChanged: (value) {
            onValueChanged(value);
          },
          firstValue: 'currentLocation',
          secondValue: 'otherLocation',
          firstText: S.of(context).current_location,
          secondText: S.of(context).other,
        ),
        if (location == 'otherLocation')
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: S.of(context).location,
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
              style: AppTextStyles.ibmPlexSans14Regular(context),
              controller: locationController,
              validator: (value) => value!.isEmpty ? S.of(context).please_enter_location : null,
            ),
          ),
      ],
    );
  }
}
