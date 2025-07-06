import 'package:flutter/material.dart';
import 'package:islami_app_c15_sun_7pm/core/constants/theme_manager.dart';
import 'package:islami_app_c15_sun_7pm/modules/splash/splash_view.dart';

import 'modules/layout/layout_view.dart';
import 'modules/layout/quran/quran_details_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.themeData,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        QuranDetailsView.routeName: (context) => QuranDetailsView(),
      },
    );
  }
}
