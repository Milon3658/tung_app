import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tung_app/Core/AppLocales.dart';
import 'package:tung_app/Core/AppRoutes.dart';
import 'package:tung_app/Core/Language.dart';

import 'Core/AppTheme.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "TUNG",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      initialRoute: AppRoutes.INITIAL,
      translations: Language(),
      locale: AppLocales.ENGLISH,
      getPages: AppRoutes.routes,
    );
  }
}