import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'package:nursy/core/di/dependency_injection.dart';
import 'package:nursy/features/translation/cubit/localization_cubit.dart';
import 'package:nursy/generated/l10n.dart';

class NursyApp extends StatelessWidget {
  const NursyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [BlocProvider(create: (context) => getIt<LocaleCubit>())],
        child: BlocBuilder<LocaleCubit, Locale>(
          builder: (context, state) {
            return MaterialApp(
              locale: Locale(state.languageCode),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              title: 'nursy app',
              theme: ThemeData(
                primaryColor: Colors.blue,
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
                scaffoldBackgroundColor: Colors.white,
              ),
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.splashScreen,
              onGenerateRoute: AppRouter.generateRoute,
            );
          },
        ),
      ),
    );
  }
}
