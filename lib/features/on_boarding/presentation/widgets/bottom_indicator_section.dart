import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nursy/core/helpers/extensions.dart';
import 'package:nursy/core/helpers/shared_pref_helper.dart';
import 'package:nursy/core/helpers/shared_prefs_keys.dart';
import 'package:nursy/core/routing/routes.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_paddings.dart';
import 'package:nursy/generated/l10n.dart';

class BottomIndicatorSection extends StatelessWidget {
  const BottomIndicatorSection({
    super.key,
    required this.pageController,
    required this.pages,
    required this.currentPage,
  });

  final PageController pageController;
  final List<Widget> pages;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: AppPaddings.gap64.h,
      left: 0,
      right: 0,
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
              },
              child: Text(
                S.of(context).next,
                style: TextStyle(color: AppColors.iceBlue, fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Row(
            children: List.generate(
              pages.length,
              (index) => Container(
                margin: EdgeInsets.only(right: AppPaddings.gap8.w),
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: currentPage == index ? AppColors.iceBlue : AppColors.ice,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
          ),

          currentPage == pages.length - 1
              ? Expanded(
                child: TextButton(
                  onPressed: () {
                    context.pushNamed(Routes.authScreen);
                    SharedPrefHelper.setData(SharedPrefsKeys.hasPassedInto, true);
                  },
                  child: Text(
                    S.of(context).finish,
                    style: TextStyle(color: AppColors.iceBlue, fontSize: 16.sp, fontWeight: FontWeight.w600),
                  ),
                ),
              )
              : const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
