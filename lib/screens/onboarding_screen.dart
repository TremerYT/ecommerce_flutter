import 'package:ecommerce/controllers/onboarding_controller.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:ecommerce/widgets/custom_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_indicator.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: PageView.builder(
                  controller: controller.pageController,
                  onPageChanged: controller.onPageChanged,
                  itemCount: controller.pages.length,
                  itemBuilder: (context, index) {
                    final page = controller.pages[index];
                    return CustomOnboarding(
                      image: page.image,
                      title: page.title,
                      subText: page.subtext,
                    );
                  },
                ),
              ),

              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () => PageIndicator(
                        pageCount: controller.pages.length,
                        currentPage: controller.currentPage.value,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      title: "Get Started",
                      onPressed: controller.nextPage,
                      width: Get.width,
                      suffixIcon: const Icon(Icons.arrow_forward),
                    ),
                    const SizedBox(height: 20),
                    buildTermsText(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTermsText() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: GoogleFonts.poppins(
          color: Colors.black87,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        children: const [
          TextSpan(text: 'By tapping on '),
          TextSpan(
            text: '"Get started"',
            style: TextStyle(color: Colors.orange),
          ),
          TextSpan(
            text: ' and using the shopping app you\'re agreeing to our ',
          ),
          TextSpan(
            text: 'terms of service',
            style: TextStyle(color: Colors.orange),
          ),
          TextSpan(text: ' and '),
          TextSpan(
            text: 'privacy policy',
            style: TextStyle(color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
