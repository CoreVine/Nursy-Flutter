import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';
import 'package:nursy/generated/l10n.dart';

class AppointmentTimeSection extends StatelessWidget {
  const AppointmentTimeSection({super.key, required this.appointmentTime, required this.onTimeSelected});

  final String appointmentTime;
  final Function(String?) onTimeSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(S.of(context).appointment_time, style: AppTextStyles.ibmPlexSans16Bold(context)),
            SvgPicture.asset(Assets.assetsSvgsMingcuteTimeLine2),
          ],
        ),
        SizedBox(height: 8.h),
        GestureDetector(
          onTap: () {
            showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value) {
              if (value != null) {
                onTimeSelected(value.format(context));
              }
            });
          },
          child: Text(appointmentTime, style: AppTextStyles.inter14Medium(context).copyWith(color: AppColors.gray)),
        ),
      ],
    );
  }
}
