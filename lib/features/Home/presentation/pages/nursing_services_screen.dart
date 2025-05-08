import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/features/Home/presentation/widgets/nursing_services_screen/nursing_service_appbar.dart';
import 'package:nursy/features/Home/presentation/widgets/nursing_services_screen/nursing_services_container.dart';
import 'package:nursy/features/Home/presentation/widgets/nursing_services_screen/nursing_services_header.dart';

class NursingServicesScreen extends StatelessWidget {
  const NursingServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.skyBlue,
      appBar: const NursingServiceAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24.h),
              NursingServicesHeader(),
              SizedBox(height: 24.h),
              NursingServicesContainer(),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
