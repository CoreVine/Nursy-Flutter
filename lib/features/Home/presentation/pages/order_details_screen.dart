import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nursy/core/helpers/extensions.dart';
import 'package:nursy/core/theming/app_text_styles.dart';
import 'package:nursy/features/Home/presentation/widgets/custom_order_app_bar.dart';
import 'package:nursy/features/Home/presentation/widgets/custom_order_details_item.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../generated/l10n.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomOrderAppBar(),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              Assets.assetsImagesBackground,
              fit: BoxFit.cover,
              width: context.width,
            ),
          ),
          Positioned(
            top: 280,
            left: 16,
            right: 16,
            child: Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset(0, -4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomOrderDetailsItem(
                      title: '#Order:',  value: 'id1', highlight: true),
                  CustomOrderDetailsItem(
                      title: S.of(context).date, value:  '12 May 2021'),
                  CustomOrderDetailsItem(
                      title: S.of(context).time, value:  '3:00 PM'),
                  CustomOrderDetailsItem(
                      title: S.of(context).order_type, value: 'Nursing service'),
                  CustomOrderDetailsItem(
                      title: S.of(context).order_details, value: 'Service 1'),
                  CustomOrderDetailsItem(
                      title: S.of(context).more_details,value:  ''),
                  CustomOrderDetailsItem(
                      title: S.of(context).client,  value:  'Mohammed Ali'),
                  CustomOrderDetailsItem(
                      title: 'Duration:',value:  '3 hours'),
                  SizedBox(
                      height: 64.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total amount:',
                        style: AppTextStyles.ibmPlexSans16Bold(context),
                      ),
                      Text(
                        'L.E 250.0',
                        style: AppTextStyles.ibmPlexSans20Bold(context).copyWith(
                          color: AppColors.brightTeal
                        )
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );

  }
}
