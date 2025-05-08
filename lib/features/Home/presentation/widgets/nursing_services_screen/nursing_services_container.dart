import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:nursy/core/widgets/custom_button.dart';
import 'package:nursy/features/Home/presentation/widgets/nursing_services_screen/additional_info_section.dart';
import 'package:nursy/generated/l10n.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'appointment_date_section.dart';
import 'appointment_time_section.dart';
import 'custom_options_radio_buttons.dart';
import 'have_patient_info_section.dart';
import 'illness_dropdown_section.dart';
import 'location_section.dart';
import 'order_services_dropdown.dart';

class NursingServicesContainer extends StatefulWidget {
  const NursingServicesContainer({super.key});

  @override
  State<NursingServicesContainer> createState() => _NursingServicesContainerState();
}

class _NursingServicesContainerState extends State<NursingServicesContainer> {
  String illnessType = '';
  String serviceType = '';
  String selectedRole = 'onSpot';
  String havePatientInfo = 'yes';
  String selectedOrderType = 'hourlyOrder';
  String selectedLocation = 'currentLocation';
  TextEditingController locationController = TextEditingController();
  TextEditingController additionalInfoController = TextEditingController();
  String appointmentTime = DateFormat('hh:mm a', Intl.getCurrentLocale()).format(DateTime.now());
  String appointmentDate = DateFormat('dd/MM/yyyy', Intl.getCurrentLocale()).format(DateTime.now());

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(32.r)),
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            CustomOptionsRadioButtons(
              selectedValue: selectedRole,
              onChanged: (value) {
                setState(() {
                  selectedRole = value;
                });
              },
              firstValue: 'onSpot',
              secondValue: 'scheduleTime',
              firstText: S.of(context).on_spot,
              secondText: S.of(context).schedule_time,
            ),
            SizedBox(height: 24.h),
            selectedRole != "onSpot"
                ? Column(
                  children: [
                    AppointmentDateSection(
                      appointmentDate: appointmentDate,
                      onDateSelected: (value) {
                        setState(() {
                          appointmentDate = value!;
                        });
                      },
                    ),
                    SizedBox(height: 16.h),
                    AppointmentTimeSection(
                      appointmentTime: appointmentTime,
                      onTimeSelected: (value) {
                        setState(() {
                          appointmentTime = value!;
                        });
                      },
                    ),
                    SizedBox(height: 16.h),
                  ],
                )
                : SizedBox.shrink(),
            IllnessDropdownSection(
              onIllnessSelected: (value) {
                setState(() {
                  illnessType = value!;
                });
              },
            ),
            SizedBox(height: 16.h),
            CustomOptionsRadioButtons(
              selectedValue: selectedOrderType,
              onChanged: (value) {
                setState(() {
                  selectedOrderType = value;
                });
              },
              firstValue: 'hourlyOrder',
              secondValue: 'specificServices',
              firstText: S.of(context).hourly_order,
              secondText: S.of(context).specific_services,
            ),
            selectedOrderType == "specificServices"
                ? Column(
                  children: [
                    SizedBox(height: 8.h),
                    OrderServicesDropdown(
                      onServicesSelected: (value) {
                        setState(() {
                          serviceType = value!;
                        });
                      },
                    ),
                    Divider(color: AppColors.lightGray, height: 1, thickness: 1),
                  ],
                )
                : SizedBox.shrink(),
            SizedBox(height: 16.h),
            HavePatientInfoSection(
              havePatientInfo: havePatientInfo,
              onValueChanged: (value) {
                setState(() {
                  havePatientInfo = value!;
                });
              },
            ),
            SizedBox(height: 16.h),
            LocationSection(
              location: selectedLocation,
              locationController: locationController,
              onValueChanged: (value) {
                setState(() {
                  selectedLocation = value!;
                });
              },
            ),
            SizedBox(height: 16.h),
            AdditionalInfoSection(additionalInfoController: additionalInfoController),
            SizedBox(height: 16.h),
            CustomButton(
              text: S.of(context).proceed,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  setState(() {
                    autovalidateMode = AutovalidateMode.disabled;
                  });
                  // Handle the form submission logic here
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.onUserInteraction;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
