import 'package:ecommerce/controllers/onboarding_controller.dart';
import 'package:ecommerce/utils/theme.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_indicator.dart';
import '../widgets/custom_text.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: PageView.builder(
                  controller: controller.pageController,
                  onPageChanged: controller.onPageChanged,
                  itemCount: controller.pages.length,
                  itemBuilder: (context, index) {
                    final page = controller.pages[index];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(page.image),
                        const SizedBox(height: 20,),
                        CustomText(
                          text: page.title,
                          style: Theme.of(context).textTheme.displayLarge,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 15),
                        CustomText(
                          text: page.subtext,
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    );
                  },
                ),
              ),
              Expanded(
                flex: 3,
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
                    buildTermsText(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTermsText(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: textTheme.bodySmall,
        children: [
          const TextSpan(text: 'By tapping on '),
          TextSpan(
            text: '"Get started"',
            style: textTheme.bodySmall?.copyWith(color: AppColors.accent),
          ),
          const TextSpan(
            text: ' and using the shopping app you\'re agreeing to our ',
          ),
          TextSpan(
            text: 'terms of service',
            style: textTheme.bodySmall?.copyWith(color: AppColors.accent),
          ),
          const TextSpan(text: ' and '),
          TextSpan(
            text: 'privacy policy',
            style: textTheme.bodySmall?.copyWith(color: AppColors.accent),
          ),
        ],
      ),
    );
  }
}
