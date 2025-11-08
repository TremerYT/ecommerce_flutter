import 'package:ecommerce/controllers/auth_controller.dart';
import 'package:ecommerce/controllers/onboarding_controller.dart';
import 'package:ecommerce/screens/authentication_screens/login_screen.dart';
import 'package:ecommerce/screens/authentication_screens/forgotpass_screen.dart';
import 'package:ecommerce/screens/authentication_screens/reset_screen.dart';
import 'package:ecommerce/screens/onboarding_screen.dart';
import 'package:ecommerce/screens/authentication_screens/signin_screen.dart';
import 'package:ecommerce/screens/authentication_screens/signup_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const onboarding = '/';
  static const login = '/login';
  static const signIn = '/signIn';
  static const signUp = '/signUp';
  static const forgotPassword = '/forgotPassword';
  static const resetPassword = '/resetPassword';
  static final routes = [
    GetPage(
      name: onboarding,
      page: () => const OnboardingScreen(),
      binding: BindingsBuilder(() {
        Get.put(OnboardingController());
      }),
    ),
    GetPage(name: login, page: () => LoginScreen()),
    GetPage(
      name: signIn,
      page: () => SignInScreen(),
      binding: BindingsBuilder(() {
        Get.put(AuthController(), permanent: true);
      }),
    ),
    GetPage(
      name: signUp,
      page: () => SignUpScreen(),
      binding: BindingsBuilder(() {
        Get.put(AuthController(), permanent: true);
      }),
    ),
    GetPage(name: forgotPassword, page: () => ForgotPasswordScreen()),
    GetPage(
      name: resetPassword,
      page: () => ResetScreen(),
      binding: BindingsBuilder(() {
        Get.put(AuthController(), permanent: true);
      }),
    ),
  ];
}
