import 'package:flutter/material.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/features/Home/presentation/widgets/custom_drawer_item.dart';

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
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        'https://example.com/avatar.jpg',
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Huda Anwar',
                    style: AppTextStyles.ibmPlexSans18Bold(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'huda.anwar94@gmail.com',
                    style: AppTextStyles.inter14Medium(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                CustomDrawerItem(
                  iconString: Assets.assetsIconsMaterialSymbolsHomeOutlineRounded,
                  title:  S.of(context).dashborard,
                  onTap: () {},
                ),
                CustomDrawerItem(
                  iconString :Assets.assetsIconsMdiAccountsOutline,
                  title:  S.of(context).profile,
                  onTap: () {},
                ),
                CustomDrawerItem(
                   iconString: Assets.assetsIconsMaterialSymbolsHistoryRounded,
                  title:  S.of(context).order_history,
                  onTap: () {},
                ),
                CustomDrawerItem(
                  iconString: Assets.assetsIconsFluentMdl2ReservationOrders,
                  title:  S.of(context).invoices,
                  onTap: () {},
                ),
                CustomDrawerItem(
                  iconString: Assets.assetsIconsMaterialSymbolsPaymentsOutlineRounded,
                  title:  S.of(context).vacancies,
                  onTap: () {},
                ),
                Divider(
                  color: AppColors.lightGray,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    S.of(context).other,
                    style: AppTextStyles.ibmPlexSans16SemiBold(
                      context,
                    ).copyWith(color: Color(0xff737373)),
                  ),
                ),
                CustomDrawerItem(
                  iconString: Assets.assetsIconsMaterialSymbolsHelpOutline,
                  title:  S.of(context).help_contact_us,
                  onTap: () {},
                ),
                CustomDrawerItem(
                  iconString: Assets.assetsIconsMaterialSymbolsLogoutRounded,
                  title:  S.of(context).log_out,
                  onTap: () {},

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
