import 'package:flutter/material.dart';
import 'package:nursy/generated/l10n.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_options_radio_buttons.dart';

class HavePatientInfoSection extends StatelessWidget {
  const HavePatientInfoSection({super.key, required this.havePatientInfo, required this.onValueChanged});

  final String havePatientInfo;
  final Function(String?) onValueChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).do_you_have_patient,
          style: AppTextStyles.ibmPlexSans16Medium(context).copyWith(color: AppColors.skyBlue),
        ),
        SizedBox(height: 8.h),
        CustomOptionsRadioButtons(
          mainAxisAlignment: MainAxisAlignment.start,
          selectedValue: havePatientInfo,
          onChanged: (value) {
            onValueChanged(value);
          },
          firstValue: 'yes',
          secondValue: 'no',
          firstText: S.of(context).yes,
          secondText: S.of(context).no,
        ),
      ],
    );
  }
}
