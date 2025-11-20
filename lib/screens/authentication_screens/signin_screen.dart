import 'package:auth_buttons/auth_buttons.dart';
import 'package:ecommerce/controllers/auth_controller.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:ecommerce/widgets/custom_form.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../utils/theme.dart';
import '../../widgets/custom_divider.dart';

class SignInScreen extends GetView<AuthController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_rounded),
                      onPressed: () => Get.back(),
                    ),
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
                const SizedBox(height: 10),
                CustomText(
                  text: "Sign in to your account",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 20),
                FormBuilder(
                  key: controller.signInKey,
                  child: buildSignInForm(context),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  title: "Sign in",
                  onPressed: () => controller.signInValidator(),
                  width: double.infinity,
                ),
                const SizedBox(height: 20),
                CustomDivider(text: "Or continue with"),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        title: "Google",
                        onPressed: () {},
                        bgColor: Color(0xffffffff),
                        textColor: Colors.black87,
                        prefixIcon: FaIcon(FontAwesomeIcons.google, size: 17),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CustomButton(
                        title: "Apple",
                        onPressed: () {},
                        bgColor: Color(0xff000000),
                        prefixIcon: FaIcon(
                          FontAwesomeIcons.apple,
                          size: 22,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: [
                        TextSpan(text: "Don't Have an account? "),
                        TextSpan(
                          text: "Sign Up",
                          style: TextStyle(color: Colors.orange),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.offNamed('/signUp');
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSignInForm(BuildContext context) {
    return Column(
      children: [
        ...controller.signInFormProperties.map((formProperty) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomForm(
              name: formProperty["name"],
              label: formProperty["label"],
              isPassword: formProperty["name"] == "password",
              keyboardType: formProperty["keyboardType"] == "email"
                  ? TextInputType.emailAddress
                  : TextInputType.text,
            ),
          );
        }),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => Row(
                children: [
                  Checkbox(
                    value: controller.rememberMe.value,
                    onChanged: controller.toggleRememberMe,
                  ),
                  CustomText(
                    text: "Remember me",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () => Get.to("/reset"),
              child: CustomText(
                text: "Forgot Password?",
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: AppColors.accent),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
