import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nursy/features/translation/cubit/localization_cubit.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            context.read<LocaleCubit>().setLocale(Locale('en'));
          },
          child: const Text('English'),
        ),
        TextButton(
          onPressed: () {
            context.read<LocaleCubit>().setLocale(Locale('ar'));
          },
          child: const Text('العربية', style: TextStyle(fontFamily: "Cairo")),
        ),
      ],
    );
  }
}
