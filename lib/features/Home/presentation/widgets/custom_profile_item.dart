import 'package:flutter/material.dart';
import 'package:nursy/core/theming/app_text_styles.dart';

import '../../../../core/theming/app_colors.dart';

class CustomProfileItem extends StatelessWidget {
  const CustomProfileItem({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0,bottom: 8.0),
            child: Text(
              title,
              style: AppTextStyles.ibmPlexSans16Bold(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              subTitle, style: AppTextStyles.inter16Medium(context).copyWith(
              color: AppColors.mediumGray
            ),),
          ),
          Divider(
            thickness: 1,
            color: AppColors.lightGray,
          )

          ]
      ),
    );
  }
}
