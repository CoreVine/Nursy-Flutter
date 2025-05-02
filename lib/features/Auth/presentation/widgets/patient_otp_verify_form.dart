import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/theming/app_text_styles.dart';
import 'package:nursy/core/widgets/custom_button.dart';
import 'package:nursy/features/translation/cubit/localization_cubit.dart';
import 'package:nursy/generated/l10n.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PatientOTPVerifyForm extends StatefulWidget {
  const PatientOTPVerifyForm({super.key});

  @override
  State<PatientOTPVerifyForm> createState() => _PatientOTPVerifyFormState();
}

class _PatientOTPVerifyFormState extends State<PatientOTPVerifyForm> {
  TextEditingController textEditingController = TextEditingController();

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    _startTimer();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();
    _timer.cancel();

    super.dispose();
  }

  late Timer _timer;
  int _secondsRemaining = 120;

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autoValidateMode,
      key: formKey,
      child: Column(
        children: [
          Directionality(
            textDirection: TextDirection.ltr,
            child: PinCodeTextField(
              appContext: context,

              pastedTextStyle: AppTextStyles.inter16Bold(context),
              length: 6,
              obscureText: false,
              obscuringCharacter: '*',
              blinkWhenObscuring: true,
              dialogConfig: DialogConfig(
                dialogTitle: S.of(context).paste_code,
                dialogContent: S.of(context).paste_code_message,
                affirmativeText: S.of(context).paste,
                negativeText: S.of(context).cancel,
              ),
              animationType: AnimationType.fade,
              validator: (v) {
                if (v!.length < 6) {
                  return "";
                } else if (!RegExp(r'^\d+$').hasMatch(v)) {
                  return "";
                } else {
                  return null;
                }
              },
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 40.h,
                fieldWidth: 40.h,
                activeFillColor: AppColors.paleSkyBlue,
                inactiveFillColor: AppColors.paleSkyBlue,
                selectedFillColor: AppColors.paleSkyBlue,
                activeColor: AppColors.paleSkyBlue,
                inactiveColor: AppColors.paleSkyBlue,
                selectedColor: AppColors.paleSkyBlue,
              ),
              cursorColor: AppColors.deepTeal,
              animationDuration: const Duration(milliseconds: 300),
              errorTextDirection:
                  context.read<LocaleCubit>().getLocale() == "ar" ? TextDirection.rtl : TextDirection.rtl,
              enableActiveFill: true,
              errorAnimationController: errorController,
              autovalidateMode: autoValidateMode,
              controller: textEditingController,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              boxShadows: const [BoxShadow(offset: Offset(0, 1), color: Colors.black12, blurRadius: 10)],
              onCompleted: (v) {},
              onChanged: (value) {},
              beforeTextPaste: (text) {
                debugPrint("Allowing to paste $text");
                return RegExp(r'^\d+$').hasMatch(text ?? '');
              },
            ),
          ),
          SizedBox(height: 32.h),
          _secondsRemaining == 0
              ? InkWell(
                onTap: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("code resent"), duration: const Duration(seconds: 2)));
                  setState(() {
                    _secondsRemaining = 120;
                    _startTimer();
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).resend_code,
                    style: AppTextStyles.inter14Regular(context).copyWith(color: AppColors.white),
                  ),
                ),
              )
              : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  S.of(context).sms_not_received(_secondsRemaining),
                  style: AppTextStyles.inter14Regular(context).copyWith(color: AppColors.white),
                ),
              ),
          SizedBox(height: 56.h),
          CustomButton(
            text: "submit",
            onPressed: () {
              if (formKey.currentState!.validate()) {
              } else {
                debugPrint("Invalid OTP: $currentText");
                errorController!.add(ErrorAnimationType.shake);
                setState(() => autoValidateMode = AutovalidateMode.onUserInteraction);
              }
            },
          ),
        ],
      ),
    );
  }
}
