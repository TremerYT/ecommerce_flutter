import 'package:ecommerce/widgets/custom_button.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends GetView {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              Image.asset("assets/authscreens_images/Mailbox.jpeg", fit: BoxFit.contain),
              const SizedBox(height: 24),
              CustomText(
                text: "Password Reset Sent",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 16),
              CustomText(
                text:
                    "Please Check your email in a few minutes - we've sent you an email containing your password recovery link",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              CustomButton(
                title: "Open my email",
                onPressed: () {},
                suffixIcon: Icon(Icons.email_outlined),
                width: Get.width,
              ),
              const SizedBox(height: 60),
              CustomText(
                text: "Didn't receive the email?",
                style: Theme.of(context).textTheme.bodyLarge,
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
