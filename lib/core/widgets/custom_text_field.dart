import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.textController,
    required this.labelText,
    required this.validator,
    this.isObscure,
    this.keyboardType,
    this.suffixIcon,
    this.prefixIcon,
  });

  final TextEditingController textController;
  final String labelText;
  final bool? isObscure;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final String? Function(String? value) validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: isObscure ?? false,
        controller: textController,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          prefixIconColor: AppColors.skyBlue,
          fillColor: AppColors.white,
          filled: true,
          hintText: labelText,
          hintStyle: AppTextStyles.inter14Medium(context).copyWith(color: AppColors.lightGray),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.r)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.r), borderSide: const BorderSide(color: Colors.blue)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.r), borderSide: const BorderSide(color: Colors.red)),
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          suffixIcon: suffixIcon,
          suffixIconColor: AppColors.deepTeal,
        ),
        validator: validator,
      ),
    );
  }
}
