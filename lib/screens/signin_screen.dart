import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends GetView {
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
            ],
          ),
        ),
      ),
    );
  }
}
