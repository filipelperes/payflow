import 'package:flutter/material.dart';

import 'modules/splash/splash_page.dart';
import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pay Flow',
        theme: ThemeData(
          primaryColor: AppColors.primary,
          useMaterial3: true,
        ),
        initialRoute: "/splash",
        routes: {
          "/splash": (context) => const SplashPage(),
          "/home": (context) => const HomePage(),
          "/login": (context) => const LoginPage(),
        });
  }
}
