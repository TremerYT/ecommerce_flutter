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
              height: Get.height * 0.75,
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
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                        const SizedBox(height: 15),
                        CustomText(
                          textAlign: TextAlign.center,
                          text: page["subtext"]!,
                          textColor: Color(0xff4e4e4e),
                          fontSize: 16,
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
            const SizedBox(height: 30),
            CustomButton(
              title: "Get Started",
              fontSize: 18,
              bgColor: Colors.deepPurple,
              onPressed: controller.nextPage,
              textColor: Colors.white,
              suffixIcon: Icons.arrow_forward,
            ),
          ],
        ),
      ),
    );
  }
}
