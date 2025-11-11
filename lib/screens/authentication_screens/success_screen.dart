import 'package:ecommerce/widgets/custom_button.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends GetView {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: ListView(
            children: [
              Image.asset("assets/Mailbox.jpeg", fit: BoxFit.contain),
              const SizedBox(height: 20),
              CustomText(
                text: "Password Reset Sent",
                textColor: Color(0xff000000),
                fontSize: 30,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              CustomText(
                text:
                    "Please Check your email in a few minutes - we've sent you an email containing your password recovery link",
                textColor: Color(0xff838383),
                fontSize: 17,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              CustomButton(
                title: "Open my email",
                onPressed: () {},
                icon: Icon(Icons.email_outlined),
              ),
              const SizedBox(height: 60),
              CustomText(
                text: "Didn't receive the email?",
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
