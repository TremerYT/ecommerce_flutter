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
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: ListView(
            children: [
              Image.asset("assets/forgot_password.jpeg", fit: BoxFit.contain),
              CustomText(
                text: "Forgot Password",
                textColor: Color(0xff000000),
                fontSize: 30,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              CustomText(
                text: "Please enter your email address to reset your password.",
                textColor: Color(0xff838383),
                fontSize: 17,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              FormBuilder(
                key: controller.resetKey,
                child: CustomForm(
                  name: 'email',
                  label: "Enter Your email Address",
                ),
              ),
              const SizedBox(height: 25),
              CustomButton(
                title: "Send Password",
                onPressed: () {Get.toNamed("/successScreen");},
                suffixIcon: Icon(Icons.arrow_forward),
              ),
              const SizedBox(height: 60),
              CustomText(
                text: "Don't remember your email?",
                textColor: Color(0xff838383),
                fontSize: 17,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
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
