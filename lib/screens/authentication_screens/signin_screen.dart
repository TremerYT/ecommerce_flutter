import 'package:ecommerce/controllers/auth_controller.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:ecommerce/widgets/custom_form.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';


class SignInScreen extends GetView<AuthController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/shopping_icon.jpeg",
                  width: 60,
                  height: 60,
                ),
              ),
              const SizedBox(height: 30),
              CustomText(
                text: "Welcome back",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: 8),
              CustomText(
                text: "Please enter your details",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 25),
              FormBuilder(
                key: controller.signInKey,
                child: Column(
                  children: controller.signInFormProperties
                      .map(
                        (property) => Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: CustomForm(
                            name: property["name"],
                            label: property["label"],
                            isPassword: property["name"] == "password",
                            keyboardType: property["name"] == "email"
                                ? TextInputType.emailAddress
                                : TextInputType.text,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Get.toNamed('/forgotPassword');
                  },
                  child: CustomText(
                    text: "Forgot Password?",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              CustomButton(
                title: "Sign In",
                onPressed: () { Get.toNamed("/homeScreen");},
                width: Get.width,
                bgColor: Color(0xff151d36),
              ),
              const SizedBox(height: 30),
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
              const SizedBox(height: 30),
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
              SizedBox(height: 40),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
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
    );
  }
}
