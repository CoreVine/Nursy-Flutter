import 'package:flutter/material.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';

class CustomReceiptItem extends StatelessWidget {
  const CustomReceiptItem({super.key, required this.title,});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(
            title,
            style: AppTextStyles.inter14SemiBold(context).copyWith(
              color: AppColors.eerieBlack
            ),
          ),

        ],
      ),
    );
  }
}
