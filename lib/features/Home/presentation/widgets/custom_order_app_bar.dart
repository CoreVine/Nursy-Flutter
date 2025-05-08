import 'package:flutter/material.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../generated/l10n.dart';

class CustomOrderAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomOrderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
            Icons.arrow_back_ios, color: AppColors.white,),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        S.of(context).order_details,
        style: AppTextStyles.ibmPlexSans18Bold(context).copyWith(color: AppColors.white),
      ),
      backgroundColor: AppColors.skyBlue,
      elevation: 6,
      leadingWidth: 20,
      shadowColor: AppColors.skyBlue  ,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Image.asset(Assets.assetsImagesLogo, height: 40),
        ),
      ]
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
