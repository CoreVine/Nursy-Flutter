import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';
import 'package:nursy/generated/l10n.dart';

class TermsConditionsCheckBox extends StatelessWidget {
  const TermsConditionsCheckBox({super.key, required this.onChanged, required this.isChecked});
  final bool isChecked;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return FormField<bool>(
      builder:
          (state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Checkbox.adaptive(
                    value: isChecked,
                    checkColor: AppColors.skyBlue,
                    focusColor: AppColors.skyBlue,
                    activeColor: AppColors.white,
                    side: const BorderSide(color: AppColors.white, width: 2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                    onChanged: (value) {
                      onChanged!(value);
                      state.didChange(value);
                    },
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    onTap: () {
                      onChanged!(!isChecked);
                      state.didChange(!isChecked); // Update the FormField state
                    },
                    child: Text(
                      S.of(context).terms,
                      style: AppTextStyles.inter14Medium(context).copyWith(color: AppColors.white),
                    ),
                  ),
                ],
              ),
              if (state.hasError)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    state.errorText ?? '',
                    style: AppTextStyles.inter12Medium(context).copyWith(color: AppColors.deepRed),
                  ),
                ),
            ],
          ),
      validator: (value) {
        if (value == null || !value) {
          return S.of(context).terms_error;
        }
        return null;
      },
    );
  }
}
