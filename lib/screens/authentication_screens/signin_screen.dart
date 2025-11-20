import 'package:ecommerce/controllers/auth_controller.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends GetView<AuthController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_rounded),
                  TextButton(
                    onPressed: () => {Get.to("/signUp")},
                    child: CustomText(
                      text: "Sign up",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              CustomText(
                text: "Welcome Back!",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
