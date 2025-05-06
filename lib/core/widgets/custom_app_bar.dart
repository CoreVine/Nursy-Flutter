import 'package:flutter/material.dart';

import '../constants/assets.dart';
import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class CustomAppBar extends StatelessWidget  implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppTextStyles.ibmPlexSans18Bold(context).copyWith(
            color: Colors.white
        ),
      ),
      backgroundColor: AppColors.skyBlue,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Image.asset(Assets.assetsImagesLogo, height: 40),
        ),      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
