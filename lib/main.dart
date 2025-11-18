import 'package:ecommerce/routes/app_routes.dart';
import 'package:ecommerce/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Precache critical images to reduce frame drops
  await _precacheImages();
  
  runApp(const MyApp());
}

Future<void> _precacheImages() async {
  // Preload onboarding images to prevent frame skipping during initial load
  final images = [
    'assets/authscreens_images/mobile_onboarding_picture_man.jpeg',
    'assets/authscreens_images/mobile_onboarding_picture_delivery.jpeg',
    'assets/authscreens_images/mobile_onboarding_picture_girl.jpeg',
    'assets/authscreens_images/login_screen_pic.jpeg',
  ];
  
  for (final imagePath in images) {
    await rootBundle.load(imagePath);
  }
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

