import 'package:ecommerce/controllers/auth_controller.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:ecommerce/widgets/custom_form.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class ResetScreen extends GetView<AuthController> {
  const ResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              Image.asset("assets/forgot_password.jpeg", fit: BoxFit.contain, height: Get.height * 0.3,),
              CustomText(
                text: "Forgot Password",
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              CustomText(
                text: "Please enter your email address to reset your password.",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              FormBuilder(
                key: controller.resetKey,
                child: CustomForm(
                  name: 'email',
                  label: "Enter Your email Address",
                ),
              ),
              const SizedBox(height: 30),
              CustomButton(
                title: "Send Password Reset",
                width: Get.width,
                onPressed: () {Get.toNamed("/successScreen");},
                suffixIcon: Icon(Icons.arrow_forward),
              ),
              const SizedBox(height: 50),
              CustomText(
                text: "Don't remember your email?",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
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
                    TextSpan(
                      text: "Contact us at ",
                      style: TextStyle(color: Color(0xff838383)),
                    ),
                    TextSpan(
                      text: "Jefferymutuku283@gmail.com",
                      style: TextStyle(color: Colors.blue),
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
