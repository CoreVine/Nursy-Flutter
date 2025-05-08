import 'package:flutter/material.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';

class CustomOptionsRadioButtons extends StatelessWidget {
  const CustomOptionsRadioButtons({
    super.key,
    required this.selectedValue,
    required this.onChanged,
    required this.firstValue,
    required this.secondValue,
    required this.firstText,
    required this.secondText,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
  });
  final String selectedValue;
  final String firstValue;
  final String secondValue;
  final String firstText;
  final String secondText;
  final Function(String) onChanged;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Radio.adaptive(
              splashRadius: 0,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

              activeColor: AppColors.skyBlue,
              fillColor: WidgetStateProperty.all(AppColors.skyBlue),
              value: firstValue,
              groupValue: selectedValue,
              onChanged: (value) => onChanged(value!),
            ),
            InkWell(
              splashColor: Colors.transparent,
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              onTap: () => onChanged(firstValue),

              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  firstText,
                  style: AppTextStyles.inter14Medium(context).copyWith(color: AppColors.eerieBlack),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 24),
        Row(
          children: [
            Radio.adaptive(
              splashRadius: 0,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: secondValue,
              fillColor: WidgetStateProperty.all(AppColors.skyBlue),
              groupValue: selectedValue,
              onChanged: (value) => onChanged(value!),
            ),
            InkWell(
              splashColor: Colors.transparent,
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              onTap: () => onChanged(secondValue),

              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  secondText,
                  style: AppTextStyles.inter14Medium(context).copyWith(color: AppColors.eerieBlack),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
