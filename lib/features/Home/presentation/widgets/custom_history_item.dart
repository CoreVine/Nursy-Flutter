import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class CustomHistoryItem extends StatelessWidget {
  const CustomHistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mohammed Ali',
            style: AppTextStyles.ibmPlexSans16SemiBold(context),
          ),
          SizedBox(
              height: 8.h),
          RichText(
            text: TextSpan(
              text: 'Total amont: ',
              style: AppTextStyles.inter14Medium(context),
              children: <TextSpan>[
                TextSpan(
                  text: 'L.E 250.0',
                  style: AppTextStyles.inter14Medium(context).copyWith(
                      color: AppColors.brightTeal
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
              height: 8.h),
          RichText(
            text: TextSpan(
              text: 'date: ',
              style: AppTextStyles.inter14Medium(context),
              children: <TextSpan>[
                TextSpan(
                  text: '12 may 2021',
                  style: AppTextStyles.inter14Medium(context).copyWith(
                      color: AppColors.mediumGray
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
              height: 8.h),
          RichText(
            text: TextSpan(
              text: 'Duration: ',
              style: AppTextStyles.inter14Medium(context),
              children: <TextSpan>[
                TextSpan(
                  text: '3 hours',
                  style: AppTextStyles.inter14Medium(context).copyWith(
                      color: AppColors.mediumGray
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
