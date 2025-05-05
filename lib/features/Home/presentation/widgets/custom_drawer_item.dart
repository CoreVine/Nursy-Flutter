import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nursy/core/theming/app_colors.dart';

import '../../../../core/theming/app_text_styles.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.iconString, required this.title, required this.onTap});

  final String iconString;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(iconString),//, color:AppColors.mediumGray),
      title: Text(title, style: AppTextStyles.inter14SemiBold(context).copyWith( color:AppColors.mediumGray),),
      onTap: onTap,
    );
  }
}
