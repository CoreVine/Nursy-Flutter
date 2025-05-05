import 'package:flutter/material.dart';
import 'package:nursy/core/constants/assets.dart';
import 'package:nursy/core/helpers/extensions.dart';
import 'package:nursy/core/theming/app_text_styles.dart';
import 'package:nursy/generated/l10n.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: SizedBox(
            child: Image.asset(Assets.assetsImagesWhiteBackgroundShape, fit: BoxFit.cover, width: context.width),
          ),
        ),

        Column(children: [Center(child: Text(S.of(context).history, style: AppTextStyles.inter20Regular(context)))]),
      ],
    );
  }
}
