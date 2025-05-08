import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/helpers/extensions.dart';

class BackIconWidget extends StatelessWidget {
  const BackIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        Intl.getCurrentLocale() == "ar"
            ? Assets.assetsIconsIconamoonArrowRight2
            : Assets.assetsIconsIconamoonArrowLeft2,
      ),
      onPressed: () => context.pop(),
    );
  }
}
