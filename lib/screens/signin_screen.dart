import 'package:ecommerce/controllers/auth_controller.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:ecommerce/widgets/custom_form.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignInScreen extends GetView<AuthController> {

  const SignInScreen({super.key});

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
                      child: ClipOval(
                        child: Image.asset(
                          "assets/shopping_icon.jpeg",
                          width: 60,
                          height: 60,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomText(
                      text: "Welcome Back!",
                      textColor: Color(0xff000000),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 10),
                    CustomText(
                      text: "Please enter your details",
                      textColor: Color(0xffb6b6b6),
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                    const SizedBox(height: 13),
                    FormBuilder(
                      key: controller.signInKey,
                      child: Column(
                        children: controller.signInFormProperties
                            .expand(
                              (property) => [
                                CustomForm(
                                  name: property["name"],
                                  label: property["label"],
                                ),
                                const SizedBox(height: 15),
                              ],
                            )
                            .toList(),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {},
                        child: CustomText(
                          text: "Forgot Password?",
                          textColor: Colors.orange,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      title: 'Sign In',
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
                          text: 'Or sign in with',
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
                    SizedBox(height: 60),
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
                          TextSpan(text: "Don't Have an account? "),
                          TextSpan(
                            text: "Sign Up",
                            style: TextStyle(color: Colors.orange),
                            recognizer: TapGestureRecognizer() ..onTap = () {
                              Get.offNamed('/signUp');
                            }
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
