import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_paddings.dart';
import 'package:nursy/core/theming/app_strokes.dart';
import 'package:nursy/core/theming/app_text_styles.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final String text;
  final Widget icon;
  final double? width;
  final Color? bgColor;
  final double? xPadding;
  final double? yPadding;
  final TextStyle? textStyle;
  final bool isLoading;
  final Function()? onPressed;

  const CustomButtonWithIcon({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
    this.width,
    this.bgColor,
    this.xPadding,
    this.yPadding,
    this.textStyle,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? AppColors.deepTeal,
          padding: EdgeInsets.symmetric(
            horizontal: xPadding != null ? xPadding! : AppPaddings.gap8,
            vertical: yPadding != null ? yPadding! : AppPaddings.gap14,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        ),
        child:
            isLoading
                ? const Center(
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(color: AppColors.white, strokeWidth: AppStrokes.strokeVlg),
                  ),
                )
                : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 8,
                  children: [
                    Text(
                      text,
                      style: textStyle ?? AppTextStyles.inter16SemiBold(context).copyWith(color: AppColors.white),
                    ),
                    icon,
                  ],
                ),
      ),
    );
  }
}
