import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/helpers/extensions.dart';
import 'package:nursy/core/helpers/validators.dart';
import 'package:nursy/core/routing/routes.dart';
import 'package:nursy/core/widgets/custom_button_with_icon.dart';
import 'package:nursy/core/widgets/custom_text_field.dart';

import 'package:nursy/features/Auth/presentation/widgets/eye_widget.dart';
import 'package:nursy/features/Auth/presentation/widgets/terms_conditions_check_box.dart';
import 'package:nursy/generated/l10n.dart';

class NurseRegisterScreen extends StatefulWidget {
  const NurseRegisterScreen({super.key});

  @override
  State<NurseRegisterScreen> createState() => _NurseRegisterScreenState();
}

class _NurseRegisterScreenState extends State<NurseRegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool isObscure = true;
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  String selectedRole = 'custodian';
  bool isChecked = false;
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
            validator: (value) => AppValidators.confirmPasswordValidator(value, _passwordController.text, context),
          ),

          TermsConditionsCheckBox(
            isChecked: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          SizedBox(height: 16.h),
          CustomButtonWithIcon(
            icon:
                Intl.getCurrentLocale() == "ar"
                    ? SvgPicture.asset(Assets.assetsIconsMdiArrowLeft)
                    : SvgPicture.asset(Assets.assetsIconsMdiArrowRight),
            width: 182.w,
            text: S.of(context).next,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.pushNamed(
                  selectedRole == 'custodian' ? Routes.patientVerifyScreen : Routes.patientVerifyScreen,
                );
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
