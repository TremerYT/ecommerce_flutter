import 'package:ecommerce/controllers/onboarding_controller.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.72,
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: controller.onPageChanged,
                itemCount: controller.pages.length,
                itemBuilder: (context, index) {
                  final page = controller.pages[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(page["image"]!, height: 250),
                        const SizedBox(height: 40),
                        CustomText(
                          textAlign: TextAlign.center,
                          text: page["title"]!,
                          textColor: Color(0xff000000),
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                        ),
                        const SizedBox(height: 15),
                        CustomText(
                          textAlign: TextAlign.center,
                          text: page["subtext"]!,
                          textColor: Color(0xff4e4e4e),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(controller.pages.length, (index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: controller.currentPage.value == index ? 20 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: controller.currentPage.value == index
                          ? Colors.deepPurple
                          : Colors.grey,
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              title: "Get Started",
              width: Get.width,
              fontSize: 18,
              bgColor: Colors.deepPurple,
              onPressed: controller.nextPage,
              textColor: Colors.white,
              suffixIcon: Icons.arrow_forward,
            ),
            const SizedBox(height: 60),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
                children: const [
                  TextSpan(
                    text: 'By tapping on ',
                  ),
                  TextSpan(
                    text: '"Get started"',
                    style: TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                    text:
                    ' and using the shopping app you\'re agreeing to our ',
                  ),
                  TextSpan(
                    text: 'terms of service',
                    style: TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                    text: ' and ',
                  ),
                  TextSpan(
                    text: 'privacy policy',
                    style: TextStyle(color: Colors.orange),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
