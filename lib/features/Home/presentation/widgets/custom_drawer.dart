import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/features/Home/presentation/widgets/custom_drawer_item.dart';
import 'package:nursy/features/drawer_nav_cubit/drawer_nav_cubit.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../generated/l10n.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.28,
            width: double.infinity,
            decoration: BoxDecoration(color: AppColors.skyBlue),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 68),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(365.r),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                        height: 80.h,
                        width: 80.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text('User Name', style: AppTextStyles.ibmPlexSans18Bold(context).copyWith(color: Colors.white)),
                  SizedBox(height: 8),
                  Text('example@email.com', style: AppTextStyles.inter14Medium(context).copyWith(color: Colors.white)),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  CustomDrawerItem(
                    iconString: Assets.assetsIconsMaterialSymbolsHomeOutlineRounded,
                    title: S.of(context).home,
                    onTap: () {
                      context.read<DrawerNavCubit>().changeSelectedIndex(0);
                    },
                    isActive: context.watch<DrawerNavCubit>().state == 0,
                  ),
                  CustomDrawerItem(
                    iconString: Assets.assetsIconsMdiAccountsOutline,
                    title: S.of(context).profile,
                    onTap: () {
                      context.read<DrawerNavCubit>().changeSelectedIndex(1);
                    },
                    isActive: context.watch<DrawerNavCubit>().state == 1,
                  ),
                  CustomDrawerItem(
                    iconString: Assets.assetsIconsMaterialSymbolsHistoryRounded,
                    title: S.of(context).order_history,
                    onTap: () {
                      context.read<DrawerNavCubit>().changeSelectedIndex(2);
                    },
                    isActive: context.watch<DrawerNavCubit>().state == 2,
                  ),
                  CustomDrawerItem(
                    iconString: Assets.assetsIconsFluentMdl2ReservationOrders,
                    title: S.of(context).invoices,
                    onTap: () {
                      context.read<DrawerNavCubit>().changeSelectedIndex(3);
                    },
                    isActive: context.watch<DrawerNavCubit>().state == 3,
                  ),

                  Divider(color: AppColors.lightGray),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      S.of(context).other,
                      style: AppTextStyles.ibmPlexSans16SemiBold(context).copyWith(color: Color(0xff737373)),
                    ),
                  ),
                  CustomDrawerItem(
                    iconString: Assets.assetsIconsMaterialSymbolsHelpOutline,
                    title: S.of(context).help_contact_us,
                    onTap: () {},
                  ),
                  CustomDrawerItem(
                    iconString: Assets.assetsIconsMaterialSymbolsLogoutRounded,
                    title: S.of(context).log_out,
                    onTap: () {},
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
