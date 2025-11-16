import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final pageController = PageController();
  var currentPage = 0.obs;
  final pages = [
    {
      "title": "One best app for all your needs",
      "subtext": "We believe in quality over quantity. Explore our hand-picked collections featuring unique, high-quality items sourced from designers around the globe",
      "image": "assets/authscreens_images/mobile_onboarding_picture_man.jpeg"
    },
    {
      "title": "Get real-time updates for all deliveries",
      "subtext": "Our time is valuable. We offer expedited, fully trackable shipping on all orders. Plus, enjoy our hassle-free returns policy because we want you to be absolutely certain you love your purchases",
      "image": "assets/authscreens_images/mobile_onboarding_picture_delivery.jpeg"
    },
    {
      "title": "Follow and get updates from various stores",
      "subtext": "Sign up for an account today and unlock a world of member-only perks: early access to new releases, seasonal sales events, and personalized recommendations tailored just for you.",
      "image": "assets/authscreens_images/mobile_onboarding_picture_girl.jpeg"
    },
  ];

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void nextPage() {
    if (currentPage.value < 2) {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    } else {
      Get.offNamed('/login');
    }
  }
}
