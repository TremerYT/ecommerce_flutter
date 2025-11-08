import 'package:ecommerce/controllers/auth_controller.dart';
import 'package:ecommerce/widgets/custom_form.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../widgets/custom_button.dart';

class SignUpScreen extends GetView<AuthController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        child: Icon(
                          Icons.close,
                          color: Color(0xff000000),
                          size: 32,
                        ),
                        onTap: () => Get.back(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomText(
                      text: "Welcome!",
                      textColor: Color(0xff000000),
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(height: 5),
                    CustomText(
                      text: "Lets get Started with a free Nirvana account.",
                      textColor: Color(0xffa1a1a1),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(height: 20),
                    FormBuilder(
                      key: controller.signUpKey,
                      child: Column(
                        children: controller.signUpFormProperties
                            .expand(
                              (property) => [
                                CustomForm(
                                  name: property["name"],
                                  label: property["label"],
                                ),
                                const SizedBox(height: 20),
                              ],
                            )
                            .toList(),
                      ),
                    ),
                    CustomButton(
                      title: 'Sign up',
                      width: Get.width,
                      fontSize: 17,
                      bgColor: Color(0xff161b37),
                      onPressed: controller.signInValidator,
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
                    Row(
                      children: [
                        Expanded(
                          child: SignInButton(
                            Buttons.google,
                            text: "Google",
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Color(0xff000000),
                            ),
                            onPressed: () {},
                            elevation: 0.1,
                            padding: EdgeInsets.all(5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: SignInButton(
                            Buttons.appleDark,
                            text: "Apple",
                            textStyle: TextStyle(
                              fontSize: 17,
                              color: Color(0xffffffff),
                            ),
                            onPressed: () {},
                            elevation: 0.1,
                            padding: EdgeInsets.all(13),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
