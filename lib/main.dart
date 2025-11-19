import 'package:ecommerce/routes/app_routes.dart';
import 'package:ecommerce/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nirvana',
      theme: appTheme,
      initialRoute: AppRoutes.onboarding,
      getPages: AppRoutes.routes,
    );
  }
}

