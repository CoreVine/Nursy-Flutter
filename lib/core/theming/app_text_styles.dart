import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'app_colors.dart';
import 'app_font_families.dart';
import 'app_font_weights.dart';
import 'app_text_size.dart';
import 'package:nursy/core/helpers/extensions.dart';

class AppTextStyles {
  static const Color textColor = AppColors.eerieBlack; // Assuming you still need AppColors

  static String getFontFamily(String fontFamily, Locale locale) {
    if (locale.languageCode == 'ar') {
      return AppFontFamilies.fontFamilyCairo; // Use Cairo for Arabic
    }
    return fontFamily;
  }

  // Base style to reuse common properties
  static TextStyle baseStyle({
    required String fontFamily,
    required FontWeight fontWeight,
    required double fontSize,
    FontStyle? fontStyle,
    BuildContext? context, // Add context
  }) {
    Locale locale = context != null ? Intl.getCurrentLocale().toLocale() : const Locale('en');
    return TextStyle(
      fontFamily: getFontFamily(fontFamily, locale),
      color: textColor,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontStyle: fontStyle,
    );
  }

  // IBM Plex Sans Styles
  static TextStyle ibmPlexSans10Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize10,
    context: context,
  );

  static TextStyle ibmPlexSans10Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize10,
    context: context,
  );

  static TextStyle ibmPlexSans10SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize10,
    context: context,
  );

  static TextStyle ibmPlexSans10Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize10,
    context: context,
  );

  static TextStyle ibmPlexSans12Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize12,
    context: context,
  );

  static TextStyle ibmPlexSans12Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize12,
    context: context,
  );

  static TextStyle ibmPlexSans12SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize12,
    context: context,
  );

  static TextStyle ibmPlexSans12Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize12,
    context: context,
  );

  static TextStyle ibmPlexSans14Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize14,
    context: context,
  );

  static TextStyle ibmPlexSans14Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize14,
    context: context,
  );

  static TextStyle ibmPlexSans14SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize14,
    context: context,
  );

  static TextStyle ibmPlexSans14Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize14,
    context: context,
  );

  static TextStyle ibmPlexSans16Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize16,
    context: context,
  );

  static TextStyle ibmPlexSans16Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize16,
    context: context,
  );

  static TextStyle ibmPlexSans16SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize16,
    context: context,
  );

  static TextStyle ibmPlexSans16Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize16,
    context: context,
  );

  static TextStyle ibmPlexSans18Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize18,
    context: context,
  );

  static TextStyle ibmPlexSans18Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize18,
    context: context,
  );

  static TextStyle ibmPlexSans18SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize18,
    context: context,
  );

  static TextStyle ibmPlexSans18Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize18,
    context: context,
  );

  static TextStyle ibmPlexSans20Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize20,
    context: context,
  );

  static TextStyle ibmPlexSans20Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize20,
    context: context,
  );

  static TextStyle ibmPlexSans20SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize20,
    context: context,
  );

  static TextStyle ibmPlexSans20Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize20,
    context: context,
  );

  static TextStyle ibmPlexSans24Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize24,
    context: context,
  );

  static TextStyle ibmPlexSans24Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize24,
    context: context,
  );

  static TextStyle ibmPlexSans24SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize24,
    context: context,
  );

  static TextStyle ibmPlexSans24Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyIBMPlexSans,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize24,
    context: context,
  );

  // Inter Styles
  static TextStyle inter10Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize10,
    context: context,
  );

  static TextStyle inter10Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize10,
    context: context,
  );

  static TextStyle inter10SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize10,
    context: context,
  );

  static TextStyle inter10Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize10,
    context: context,
  );

  static TextStyle inter12Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize12,
    context: context,
  );

  static TextStyle inter12Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize12,
    context: context,
  );

  static TextStyle inter12SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize12,
    context: context,
  );

  static TextStyle inter12Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize12,
    context: context,
  );

  static TextStyle inter14Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize14,
    context: context,
  );

  static TextStyle inter14Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize14,
    context: context,
  );

  static TextStyle inter14SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize14,
    context: context,
  );

  static TextStyle inter14Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize14,
    context: context,
  );

  static TextStyle inter16Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize16,
    context: context,
  );

  static TextStyle inter16Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize16,
    context: context,
  );

  static TextStyle inter16SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize16,
    context: context,
  );

  static TextStyle inter16Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize16,
    context: context,
  );

  static TextStyle inter18Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize18,
    context: context,
  );

  static TextStyle inter18Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize18,
    context: context,
  );

  static TextStyle inter18SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize18,
    context: context,
  );

  static TextStyle inter18Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize18,
    context: context,
  );

  static TextStyle inter20Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize20,
    context: context,
  );

  static TextStyle inter20Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize20,
    context: context,
  );

  static TextStyle inter20SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize20,
    context: context,
  );

  static TextStyle inter20Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize20,
    context: context,
  );

  static TextStyle inter24Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize24,
    context: context,
  );

  static TextStyle inter24Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize24,
    context: context,
  );

  static TextStyle inter24SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize24,
    context: context,
  );

  static TextStyle inter24Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyInter,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize24,
    context: context,
  );
}
