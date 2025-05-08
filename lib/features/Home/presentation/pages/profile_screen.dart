import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nursy/features/Home/presentation/widgets/custom_profile_item.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../generated/l10n.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3.5,
            color: AppColors.iceBlue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(365.r),
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    height: 80.h,
                    width: 80.w,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8.h),
                Text('Huda Anwar', style: AppTextStyles.ibmPlexSans18Bold(context).copyWith(color: Colors.white)),
                SizedBox(height: 22.h),
                RatingBar.builder(
                  itemSize: 20,
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(Icons.star, color: Color(0xffEF9B26)),
                  onRatingUpdate: (rating) {
                    log(rating.toString());
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 31),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomProfileItem(title: S.of(context).email, subTitle: 'huda.anwar94@gmail.com'),
                CustomProfileItem(title: S.of(context).phone_number, subTitle: '+201002816543'),
                CustomProfileItem(title: S.of(context).birth_date, subTitle: '30/04/1994'),
                CustomProfileItem(title: S.of(context).gender, subTitle: S.of(context).female),
                Text(
                  S.of(context).speciality,
                  style: AppTextStyles.ibmPlexSans16SemiBold(context).copyWith(color: AppColors.brightTeal),
                ),
                SizedBox(height: 16),
                CustomProfileItem(title: S.of(context).domain, subTitle: S.of(context).kidney_failure),
                CustomProfileItem(title: S.of(context).special_illness, subTitle: S.of(context).normal),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
