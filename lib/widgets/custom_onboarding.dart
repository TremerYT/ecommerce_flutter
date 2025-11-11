import 'package:ecommerce/utils/theme.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomOnboarding extends StatelessWidget {
  final String image;
  final String title;
  final String subText;

  const CustomOnboarding({
    super.key,
    required this.image,
    required this.title,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: Get.height * 0.3),
        const SizedBox(height: 40),
        CustomText(
          text: title,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 15),
        CustomText(text: subText, textAlign: TextAlign.center),
      ],
    );
  }
}
