import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.textController,
    this.labelText,
    this.validator,
    this.isObscure,
    this.keyboardType,
    this.suffixIcon,
    this.prefixIcon,
    this.fillColor = AppColors.white,
    this.maxLines,
  });

  final TextEditingController? textController;
  final String? labelText;
  final bool? isObscure;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final String? Function(String? value)? validator;
  final Color? fillColor;
  final int? maxLines ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      keyboardType: keyboardType,
      obscureText: isObscure ?? false,
      controller: textController,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: true,
        hintText: labelText,
        hintStyle: AppTextStyles.inter14Medium(context).copyWith(color: AppColors.lightGray),
        errorStyle: AppTextStyles.inter12Medium(context).copyWith(color: AppColors.deepRed),
        prefixIcon: prefixIcon,
        prefixIconColor: AppColors.skyBlue,
        suffixIcon: suffixIcon,
        suffixIconColor: AppColors.deepTeal,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.r)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: const BorderSide(color: Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
      validator: validator,
    );
  }
}
