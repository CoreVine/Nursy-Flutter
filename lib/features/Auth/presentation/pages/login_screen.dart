import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/helpers/validators.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/widgets/custom_button.dart';
import 'package:nursy/core/widgets/custom_text_field.dart';
import 'package:nursy/features/Auth/presentation/widgets/eye_widget.dart';
import 'package:nursy/generated/l10n.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 63.h),
              Image.asset(Assets.assetsImagesLogo, height: 110),
              SizedBox(height: 48.h),
              LoginFormSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginFormSection extends StatefulWidget {
  const LoginFormSection({super.key});

  @override
  State<LoginFormSection> createState() => _LoginFormSectionState();
}

class _LoginFormSectionState extends State<LoginFormSection> {
  final TextEditingController _passwordController = TextEditingController();
  bool isObscure = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autoValidateMode,
      child: Column(
        children: [
          CustomTextField(
            textController: TextEditingController(),
            labelText: S.of(context).email,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SvgPicture.asset(Assets.assetsIconsIcOutlineEmail),
            ),

            isObscure: false,
            validator: (value) => AppValidators.emailValidator(value, context),
          ),
          SizedBox(height: 16.h),
          CustomTextField(
            textController: _passwordController,
            labelText: S.of(context).retype_pass,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SvgPicture.asset(Assets.assetsIconsMaterialSymbolsLockOutline),
            ),
            suffixIcon: EyeWidget(
              isObscure: isObscure,
              onTap: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
            ),
            isObscure: isObscure,
            validator: (value) => AppValidators.passwordValidator(value, context),
          ),
          SizedBox(height: 48.h),
          CustomButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Perform login action
              } else {
                setState(() {
                  _autoValidateMode = AutovalidateMode.onUserInteraction;
                });
              }
            },
            text: S.of(context).sign_in,
            width: 150.w,
          ),
        ],
      ),
    );
  }
}
