import 'package:ecommerce/controllers/onboarding_controller.dart';
import 'package:ecommerce/screens/login_screen.dart';
import 'package:ecommerce/screens/onboarding_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const onboarding = '/';
  static const login = '/login';
  static final routes = [
    GetPage(
      name: onboarding,
      page: () => const OnboardingScreen(),
      binding: BindingsBuilder(() {
        Get.put(OnboardingController());
      }),
    ),
    GetPage(name: login, page: () => LoginScreen()),
  ];
}
