import 'package:flutter/material.dart';
import 'package:nursy/generated/l10n.dart';

String getNavigationTitle(int index, BuildContext context) {
  switch (index) {
    case 0:
      return S.of(context).home;
    case 1:
      return S.of(context).profile;
    case 2:
      return S.of(context).history;
    case 3:
      return S.of(context).scheduled_orders;
    default:
      return S.of(context).home;
  }
}
