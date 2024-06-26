import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payflow/shared/models/user_model.dart';

import 'modules/insert_boleto/insert_boleto_page.dart';
import 'modules/barcode_scanner/barcode_scanner_page.dart';
import 'modules/splash/splash_page.dart';
import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key}) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppColors.primary));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pay Flow',
        theme: ThemeData(
          primaryColor: AppColors.primary,
          primarySwatch: Colors.orange,
          useMaterial3: true,
        ),
        initialRoute: "/splash",
        routes: {
          "/splash": (context) => const SplashPage(),
          "/home": (context) => HomePage(
              user: ModalRoute.of(context)!.settings.arguments as UserModel),
          "/login": (context) => const LoginPage(),
          "/barcode_scanner": (context) => const BarcodeScannerPage(),
          "/insert_boleto": (context) => InsertBoletoPage(
                barcode: ModalRoute.of(context)?.settings.arguments.toString(),
              ),
        });
  }
}
