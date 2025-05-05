import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nursy/core/constants/assets.dart';

class EyeWidget extends StatelessWidget {
  const EyeWidget({super.key, required this.isObscure, required this.onTap});

  final bool isObscure;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      focusNode: FocusNode(descendantsAreFocusable: false, canRequestFocus: false, skipTraversal: true),
      onPressed: onTap,
      icon:
          isObscure
              ? SvgPicture.asset(Assets.assetsIconsIconamoonEyeFill)
              : SvgPicture.asset(Assets.assetsIconsRiEyeOffFill),
    );
  }
}
