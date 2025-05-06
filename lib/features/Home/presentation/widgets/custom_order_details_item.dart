import 'package:flutter/material.dart';
import 'package:nursy/core/theming/app_colors.dart';

import '../../../../core/theming/app_text_styles.dart';

class CustomOrderDetailsItem extends StatelessWidget {
  const CustomOrderDetailsItem({super.key, required this.title, required this.value, this.highlight = false});

  final String title;
  final String value;
  final bool highlight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$title ',
              style: AppTextStyles.ibmPlexSans16Bold(context),
            ),
            TextSpan(
              text: value,
              style:AppTextStyles.inter16Medium(context).copyWith(
                color: highlight ? AppColors.deepRed : AppColors.mediumGray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
