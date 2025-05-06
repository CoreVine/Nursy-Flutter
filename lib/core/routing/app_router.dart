import 'package:flutter/material.dart';
import 'package:nursy/core/routing/routes.dart';
import 'package:nursy/features/Auth/presentation/pages/auth_screen.dart';
import 'package:nursy/features/Auth/presentation/pages/patient_verify_otp_screen.dart';
import 'package:nursy/features/Auth/presentation/pages/register_nurse_screen.dart';
import 'package:nursy/features/Auth/presentation/pages/register_patient_screen.dart';
import 'package:nursy/features/Auth/presentation/pages/register_screen.dart';
import 'package:nursy/features/Home/presentation/pages/main_screen.dart';
import 'package:nursy/features/Home/presentation/pages/order_details_screen.dart';
import 'package:nursy/features/Home/presentation/pages/receipt_screen.dart';
import 'package:nursy/features/Home/presentation/pages/review_screen.dart';
import 'package:nursy/features/auth/presentation/pages/login_screen.dart';
import 'package:nursy/features/on_boarding/presentation/pages/onboarding_screen.dart';
import 'package:nursy/features/splash/splash_screen.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routes.authScreen:
        return MaterialPageRoute(builder: (_) => const AuthScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

      case Routes.registerPatientScreen:
        return MaterialPageRoute(builder: (_) => const RegisterPatientScreen());

      case Routes.patientVerifyScreen:
        return MaterialPageRoute(builder: (_) => const PatientVerifyOtpScreen());

      case Routes.registerNurseScreen:
        return MaterialPageRoute(builder: (_) => const RegisterNurseScreen());

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => MainScreen());

      case Routes.orderDetailsScreen:
        return MaterialPageRoute(builder: (_) => OrderDetailsScreen());

      case Routes.receiptScreen:
        return MaterialPageRoute(builder: (_) => ReceiptScreen());

      case Routes.reviewScreen:
        return MaterialPageRoute(builder: (_) => ReviewScreen());
    }
    return null;
  }
}
