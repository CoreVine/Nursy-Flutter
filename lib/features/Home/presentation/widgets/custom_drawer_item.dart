import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nursy/core/theming/app_colors.dart';

import '../../../../core/theming/app_text_styles.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.iconString,
    required this.title,
    required this.onTap,
    this.isActive = false,
  });

  final String iconString;
  final String title;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      tileColor: isActive ? AppColors.skyBlue.withOpacity(0.1) : Colors.transparent,
      leading: SvgPicture.asset(iconString, color: isActive ? AppColors.skyBlue : AppColors.mediumGray),
      title: Text(
        title,
        style: AppTextStyles.inter14SemiBold(
          context,
        ).copyWith(color: isActive ? AppColors.skyBlue : AppColors.mediumGray),
      ),
      onTap: onTap,
    );
  }
}
