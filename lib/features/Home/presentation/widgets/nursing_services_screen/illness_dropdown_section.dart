import 'package:flutter/material.dart';
import 'package:nursy/generated/l10n.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IllnessDropdownSection extends StatelessWidget {
  const IllnessDropdownSection({super.key, required this.onIllnessSelected});

  final Function(String?) onIllnessSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).any_special_illness, style: AppTextStyles.ibmPlexSans16Bold(context)),
        SizedBox(height: 8.h),

        DropdownButtonFormField(
          hint: Text(
            S.of(context).illness_type,
            style: AppTextStyles.inter14Medium(context).copyWith(color: AppColors.mediumGray),
          ),

          isExpanded: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.white,
            contentPadding: EdgeInsets.zero,
            border: InputBorder.none,
          ),
          items: [
            DropdownMenuItem(
              value: 'value1',
              child: Text(S.of(context).accounts, style: AppTextStyles.inter14Medium(context)),
            ),
            DropdownMenuItem(
              value: 'value2',
              child: Text(S.of(context).graduation_certificate, style: AppTextStyles.inter14Medium(context)),
            ),
          ],
          onChanged: (value) {
            onIllnessSelected(value);
          },
        ),
        Divider(color: AppColors.lightGray, height: 1, thickness: 1),
      ],
    );
  }
}
