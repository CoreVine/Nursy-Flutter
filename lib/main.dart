import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:nursy/core/helpers/constants.dart';
import 'package:nursy/core/helpers/shared_pref_helper.dart';
import 'package:nursy/core/helpers/shared_prefs_keys.dart';
import 'package:nursy/core/observer/bloc_observer.dart';
import 'package:nursy/nursy_app.dart';
import 'core/di/dependency_injection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait<void>([ScreenUtil.ensureScreenSize(), setupGetIt(), checkIfFirstTime()]);
  Bloc.observer = MyBlocObserver();
  runApp(const NursyApp());
}

Future<void> checkIfFirstTime() async {
  final bool storedHasPassedIntro = await SharedPrefHelper.getBool(SharedPrefsKeys.hasPassedInto) ?? true;
  if (storedHasPassedIntro) {
    hasPassedInto = true;
  } else {
    hasPassedInto = false;
  }
}
