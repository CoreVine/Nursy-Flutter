import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/theming/app_colors.dart';
import 'package:nursy/core/widgets/custom_button.dart';
import 'package:nursy/core/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceBlue,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                textController: TextEditingController(),
                labelText: 'ASD',
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SvgPicture.asset(Assets.assetsIconsMaterialSymbolsPhoneAndroid),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SvgPicture.asset(Assets.assetsIconsIcSharpUpload),
                ),
                isObscure: false,
                validator: (String? value) {
                  return null;
                },
              ),
              CustomButton(onPressed: () {}, text: "Button"),
            ],
          ),
        ),
      ),
    );
  }
}
