import 'package:flutter/material.dart';
import '../models/onboarding_model.dart';
import 'custom_text.dart';

class CustomOnBoarding extends StatelessWidget {
  final OnboardingModel page;

  const CustomOnBoarding({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          page.image,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 20),
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
  }
}
