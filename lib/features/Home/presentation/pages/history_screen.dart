import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/helpers/extensions.dart';
import 'package:nursy/core/theming/app_text_styles.dart';
import 'package:nursy/features/Home/presentation/widgets/custom_history_item.dart';
import 'package:nursy/generated/l10n.dart';

import '../../../../core/routing/routes.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: SizedBox(
            child: Image.asset(
              Assets.assetsImagesWhiteBackgroundShape,
              fit: BoxFit.cover,
              width: context.width,
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            Center(
              child: Text(
                S.of(context).order_history,
                style: AppTextStyles.ibmPlexSans18Bold(context).copyWith(
                  color: Colors.white
                ),
              ),
            ),
            SizedBox(
                height: 32.h),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                  itemBuilder: (context, index){
                    return InkWell(
                        onTap: (){
                          context.pushNamed(Routes.orderDetailsScreen);
                        },
                        child: CustomHistoryItem());
                  },),
            ),

          ],
        ),
      ],
    );
  }
}
