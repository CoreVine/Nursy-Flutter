import 'package:flutter/material.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';
import 'package:nursy/generated/l10n.dart';

class OrderServicesDropdown extends StatelessWidget {
  const OrderServicesDropdown({super.key, required this.onServicesSelected});

  final Function(String?) onServicesSelected;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      hint: Text(
        S.of(context).service_type,
        style: AppTextStyles.inter14Medium(context).copyWith(color: AppColors.mediumGray),
      ),

      isExpanded: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.white,
        contentPadding: EdgeInsets.zero,
        border: InputBorder.none,
      ),
      items: [
        DropdownMenuItem(
          value: 'value1',
          child: Text(S.of(context).service_1, style: AppTextStyles.inter14Medium(context)),
        ),
        DropdownMenuItem(
          value: 'value2',
          child: Text(S.of(context).nursing_service, style: AppTextStyles.inter14Medium(context)),
        ),
      ],
      onChanged: (value) {
        onServicesSelected(value);
      },
    );
  }
}
