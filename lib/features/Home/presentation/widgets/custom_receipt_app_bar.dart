import 'package:flutter/material.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../generated/l10n.dart';

class CustomReceiptAppBar extends StatelessWidget  implements PreferredSizeWidget {
  const CustomReceiptAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        S.of(context).receipt,
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
