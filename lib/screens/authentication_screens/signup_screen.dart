import 'package:ecommerce/controllers/auth_controller.dart';
import 'package:ecommerce/widgets/custom_form.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../widgets/custom_button.dart';

class SignUpScreen extends GetView<AuthController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildCloseButton(),
              const SizedBox(height: 20),
              CustomText(
                text: "Welcome",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 5),
              CustomText(
                text: "Lets get Started with a free Nirvana account.",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),
              buildForm(),
              CustomButton(
                title: 'Sign up',
                width: Get.width,
                bgColor: Color(0xff161b37),
                onPressed: controller.signUpValidator,
                textColor: Color(0xffffffff),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                      endIndent: 10,
                    ),
                  ),
                  CustomText(
                    text: 'Or sign up with',
                    textColor: Color(0xFF838383),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 10,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              buildSignInButtons(),
              const SizedBox(height: 60),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(text: "Already Have an account? "),
                      TextSpan(
                        text: "Sign in",
                        style: TextStyle(color: Colors.orange),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.offNamed('/signIn');
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
    );
  }

  Widget buildCloseButton() {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        child: Icon(Icons.close, color: Color(0xff000000), size: 30),
        onTap: () => Get.back(),
      ),
    );
  }

  Widget buildForm() {
    return FormBuilder(
      key: controller.signUpKey,
      child: Column(
        children: controller.signUpFormProperties.map((property) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomForm(name: property["name"], label: property["label"]),
          );
        }).toList(),
      ),
    );
  }

  Widget buildSignInButtons() {
    return Row(
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
    );
  }
}
