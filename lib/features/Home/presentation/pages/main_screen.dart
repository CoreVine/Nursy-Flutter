import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/features/Home/presentation/pages/home_screen.dart';
import 'package:nursy/features/Home/presentation/pages/profile_screen.dart';
import 'package:nursy/features/Home/presentation/pages/history_screen.dart';
import 'package:nursy/features/Home/presentation/pages/scheduled_orders_screen.dart';
import 'package:nursy/features/Home/presentation/widgets/custom_app_bar.dart';
import 'package:nursy/features/Home/presentation/widgets/custom_drawer.dart';
import 'package:nursy/features/drawer_nav_cubit/drawer_nav_cubit.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final _screenBodies = [HomeScreen(), ProfileScreen(), HistoryScreen(), ScheduledOrdersScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: CustomAppBar(scaffoldKey: scaffoldKey),
      drawer: CustomDrawer(),
      backgroundColor: AppColors.iceBlue,
      body: SafeArea(
        child: BlocBuilder<DrawerNavCubit, int>(
          builder: (context, state) {
            return _screenBodies[state];
          },
        ),
      ),
    );
  }
}
