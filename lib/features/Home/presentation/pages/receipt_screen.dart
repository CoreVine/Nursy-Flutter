import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';
import 'package:nursy/features/Home/presentation/widgets/custom_receipt_item.dart';

import '../../../../core/constants/assets.dart';
import '../../../../generated/l10n.dart';
import '../widgets/custom_receipt_app_bar.dart';

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomReceiptAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
              Assets.assetsSvgsReceipt,
          width: 241.w,
          height: 218.h,),
          SizedBox(
            height: 29.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 54),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 41,vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.35),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    '25 Feb, 3:00 P.M',
                    style: AppTextStyles.ibmPlexSans16SemiBold(context).copyWith(
                      color: Color(0xff3F536C)
                    )
                  ),
                  SizedBox(
                      height: 8.h),
                  Text(
                    'Total amount: 250 L.E',
                      style: AppTextStyles.ibmPlexSans18Bold(context).copyWith(
                          color: Color(0xff3F536C)
                      )
                  ),
                  SizedBox(
                      height: 16.h),
                  Divider(
                    thickness: 1.1,),
                  SizedBox(
                      height: 24.h),
                  CustomReceiptItem(
                      title: S.of(context).duration),
                  CustomReceiptItem(
                      title: S.of(context).hourly_fees),
                  CustomReceiptItem(
                      title: S.of(context).credit_200),
                  CustomReceiptItem(
                      title: S.of(context).debit_50),
                ],
              ),
            ),
          ),
          SizedBox(
              height: 32.h),
          ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.brightTeal,
              padding: EdgeInsets.symmetric(horizontal: 77, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Text(
              S.of(context).done,
              style: AppTextStyles.inter18Bold(context).copyWith(
                color: AppColors.white
              ),
            ),
          ),
        ],
      ),
    );
  }
}


