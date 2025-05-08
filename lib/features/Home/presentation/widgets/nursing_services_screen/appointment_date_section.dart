import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';
import 'package:nursy/generated/l10n.dart';

class AppointmentDateSection extends StatelessWidget {
  const AppointmentDateSection({super.key, required this.appointmentDate, required this.onDateSelected});

  final String appointmentDate;
  final Function(String?) onDateSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(S.of(context).appointment_date, style: AppTextStyles.ibmPlexSans16Bold(context)),
            SvgPicture.asset(Assets.assetsSvgsMingcuteTimeLine),
          ],
        ),
        SizedBox(height: 8.h),
        GestureDetector(
          onTap: () {
            showDatePicker(
              context: context,
              firstDate: DateTime.now(),
              lastDate: DateTime(2030, 12, 31),
              initialDate: DateTime.now(),
            ).then((value) {
              if (value != null) {
                onDateSelected(DateFormat('dd/MM/yyyy', Intl.getCurrentLocale()).format(value));
              }
            });
          },
          child: Text(appointmentDate, style: AppTextStyles.inter14Medium(context).copyWith(color: AppColors.gray)),
        ),
      ],
    );
  }
}
