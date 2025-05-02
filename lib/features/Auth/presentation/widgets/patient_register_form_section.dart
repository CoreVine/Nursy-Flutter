import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/helpers/validators.dart';
import 'package:nursy/core/widgets/custom_button_with_icon.dart';
import 'package:nursy/core/widgets/custom_text_field.dart';

import 'package:nursy/features/Auth/presentation/widgets/eye_widget.dart';
import 'package:nursy/generated/l10n.dart';

class PatientRegisterFormSection extends StatefulWidget {
  const PatientRegisterFormSection({super.key});

  @override
  State<PatientRegisterFormSection> createState() => _PatientRegisterFormSectionState();
}

class _PatientRegisterFormSectionState extends State<PatientRegisterFormSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool isObscure = true;
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autoValidateMode,
      child: Column(
        spacing: 16,
        children: [
          CustomTextField(
            textController: _usernameController,
            labelText: S.of(context).username,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SvgPicture.asset(Assets.assetsIconsIconamoonProfile),
            ),

            validator: (value) => AppValidators.nameValidator(value, context),
          ),
          CustomTextField(
            textController: _emailController,
            labelText: S.of(context).email,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SvgPicture.asset(Assets.assetsIconsIcOutlineEmail),
            ),

            validator: (value) => AppValidators.emailValidator(value, context),
          ),
          CustomTextField(
            textController: _passwordController,
            labelText: S.of(context).password,
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
          CustomTextField(
            textController: _confirmPasswordController,
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
            validator: (value) => AppValidators.confirmPasswordValidator(value, _passwordController.text, context),
          ),
          SizedBox(height: 32.h),
          CustomButtonWithIcon(
            icon:
                Intl.getCurrentLocale() == "ar"
                    ? SvgPicture.asset(Assets.assetsIconsMdiArrowLeft)
                    : SvgPicture.asset(Assets.assetsIconsMdiArrowRight),
            width: 182.w,
            text: S.of(context).next,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
              } else {
                setState(() {
                  _autoValidateMode = AutovalidateMode.onUserInteraction;
                });
              }
            },
          ),
          SizedBox(height: 26.h),
        ],
      ),
    );
  }
}
