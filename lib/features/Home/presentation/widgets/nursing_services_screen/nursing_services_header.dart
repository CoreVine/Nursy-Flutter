import 'package:flutter/material.dart';
import 'package:nursy/generated/l10n.dart';
import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';

class NursingServicesHeader extends StatelessWidget {
  const NursingServicesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(Assets.assetsImagesNursingService, height: 150),
        Expanded(
          child: Text(
            textAlign: TextAlign.end,
            S.of(context).nursing_services,
            style: AppTextStyles.ibmPlexSans18Bold(context).copyWith(color: AppColors.white),
          ),
        ),
      ],
    );
  }
}
