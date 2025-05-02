import 'package:flutter/material.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';
import 'package:nursy/generated/l10n.dart';

class PatientTypeRadioButtons extends StatelessWidget {
  const PatientTypeRadioButtons({super.key, required this.selectedRole, required this.onChanged});

  final String selectedRole;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Radio.adaptive(
              activeColor: AppColors.white,
              fillColor: WidgetStateProperty.all(AppColors.white),
              value: "custodian",
              groupValue: selectedRole,
              onChanged: (value) => onChanged(value!),
            ),
            InkWell(
              splashColor: Colors.transparent,
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              onTap: () => onChanged("custodian"),

              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  S.of(context).custodian,
                  style: AppTextStyles.inter14Medium(context).copyWith(color: AppColors.white),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Radio.adaptive(
              value: "patient",
              fillColor: WidgetStateProperty.all(AppColors.white),
              groupValue: selectedRole,
              onChanged: (value) => onChanged(value!),
            ),
            InkWell(
              splashColor: Colors.transparent,
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              onTap: () => onChanged("patient"),

              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  S.of(context).patient,
                  style: AppTextStyles.inter14Medium(context).copyWith(color: AppColors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
