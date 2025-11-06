import 'package:ecommerce/controllers/auth_controller.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:ecommerce/widgets/custom_form.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class SignInScreen extends GetView<AuthController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
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
              const SizedBox(height: 30),
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
                          const SizedBox(height: 20),
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
            ],
          ),
        ),
      ),
    );
  }
}
