import 'package:flutter/material.dart';
import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';
import 'package:nursy/features/Auth/presentation/widgets/back_icon.dart';
import 'package:nursy/generated/l10n.dart';

class NursingServiceAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NursingServiceAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: kToolbarHeight,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: AppColors.eerieBlack.withOpacity(0.15), offset: const Offset(0, 4), blurRadius: 4),
          ],
        ),
        child: AppBar(
          scrolledUnderElevation: 0,
          titleSpacing: 0,
          backgroundColor: AppColors.skyBlue,
          elevation: 0,
          leading: BackIconWidget(),
          title: Text(
            S.of(context).order_nursing_services,
            style: AppTextStyles.ibmPlexSans18Bold(context).copyWith(color: AppColors.white),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Image.asset(Assets.assetsImagesLogo, height: 40),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
